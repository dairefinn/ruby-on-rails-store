class Product < ApplicationRecord
  validates :name, presence: true # Product must have a name
end
