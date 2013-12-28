class Page < ActiveRecord::Base
  validates_uniqueness_of :title

  scope :nav_items, -> { where(in_nav: true) }

  def display_title
    self.title.capitalize
  end
end
