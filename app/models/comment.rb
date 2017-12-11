class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :product

  scope :rating_desc, -> { order(rating: :desc) } #used to return an array
  scope :rating_asc, -> { order(rating: :asc) }
  
end
