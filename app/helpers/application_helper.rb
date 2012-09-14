require 'open-uri'

module ApplicationHelper
  def self.get_latest_tweet
    tweet = Twitter.user_timeline('uoftironsports', include_entities: true).first
    urls = tweet.urls
    puts "Got latest tweet #{tweet.text}, caching"
    Rails.cache.write 'tweet', tweet
    Rails.cache.write 'tweet_urls', urls
  end

  def latest_tweet
    Rails.cache.read 'tweet'
  end

  def latest_tweet_entities
    Rails.cache.read 'tweet_urls'
  end

  def latest_tweet_text
    if latest_tweet.nil? or latest_tweet_entities.nil?
      ApplicationHelper.get_latest_tweet
    end
    txt = latest_tweet.text.clone
    latest_tweet_entities.each do |entity|
      txt[entity.indices[0]..entity.indices[1]] = link_to entity.display_url, entity.expanded_url
    end
    txt
  end

  def latest_tweet_url
    if latest_tweet.nil?
      ApplicationHelper.get_latest_tweet
    end
    'http://twitter.com/uoftironsports/statuses/%d' % latest_tweet.id
  end

  def self.update_member_numbers
    valid_numbers = []
    open(ENV['MEMBER_WHITELIST_URL']).each do |number|
      valid_numbers << number.to_i
    end
    puts "Read #{valid_numbers.length} valid member ids form #{ENV['MEMBER_WHITELIST_URL']}"
    Rails.cache.write 'member_numbers', valid_numbers
  end

  def self.get_member_numbers
    member_nums = Rails.cache.read 'member_numbers'
    if member_nums.nil?
      ApplicationHelper.update_member_numbers
      member_nums = Rails.cache.read 'member_numbers'
    end
    return member_nums
  end

end
