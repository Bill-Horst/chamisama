class Order < ApplicationRecord
  # belongs_to :product
  has_many :product
  belongs_to :user
end
