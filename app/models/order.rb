class Order < ApplicationRecord
  # belongs_to :product
  has_many :products
  belongs_to :user
end
