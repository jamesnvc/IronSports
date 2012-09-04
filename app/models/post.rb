class Post < ActiveRecord::Base
  attr_accessible :title, :content, :published

  scope :order_by_newest, order("published desc")
end
