require 'open-uri'

module ApplicationHelper
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
