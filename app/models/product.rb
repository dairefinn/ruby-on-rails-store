class Product < ApplicationRecord
  include Notifications # Include the Notifications module

  has_many :subscribers, dependent: :destroy # Product has many subscribers
  has_one_attached :featured_image # Product has a featured image attached
  has_rich_text :description # Product has a description which is a rich text field

  validates :name, presence: true # Product must have a name
  validates :inventory_count, numericality: { greater_than_or_equal_to: 0 } # Product cannot have a negative inventory count
end
