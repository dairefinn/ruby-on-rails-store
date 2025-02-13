class Product < ApplicationRecord
  has_rich_text :description # Product has a description which is a rich text field
  validates :name, presence: true # Product must have a name
end
