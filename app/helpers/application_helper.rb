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
    return if not latest_tweet
    txt = latest_tweet.text.clone
    latest_tweet_entities.each do |entity|
      txt[entity.indices[0]..entity.indices[1]] = link_to entity.display_url, entity.expanded_url
    end
    txt
  end

  def latest_tweet_url
    return if not latest_tweet
    'http://twitter.com/uoftironsports/statuses/%d' % latest_tweet.id
  end

end
