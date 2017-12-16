class Product < ApplicationRecord

  validates :name, presence: true
  validates :image_url, presence: true
  validates :price, presence: true, numericality: true

  has_many :order
  has_many :comments

  def self.search_by_name(search_term)
    if Rails.env.development?
      Product.where("name LIKE ?", "%#{search_term}%")
    elsif Rails.env.production?
      Product.where("name ilike ?", "%#{search_term}%")
    end
  end

  def self.search(color, country)
    if Rails.env.development?
      Product.where("colour LIKE ? OR country LIKE ?", color, country)
      elsif Rails.env.production?
      Product.where("colour ilike ? OR country ilike = ?", color, country)
    end
  end

  def highest_rating_comment
    comments.rating_desc.first #used on a single object
  end

  def lowest_rating_comment
    comments.rating_desc.last
  end

  def average_rating
    comments.average(:rating).to_f
  end

end
