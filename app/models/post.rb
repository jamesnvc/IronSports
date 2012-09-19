class Post < ActiveRecord::Base
  attr_accessible :title, :content, :published

  scope :order_by_newest, order("published desc")
  scope :recent, lambda { |n| order_by_newest.limit(n) }

  after_initialize :init

  def init
    self.published ||= DateTime.now
  end

end
