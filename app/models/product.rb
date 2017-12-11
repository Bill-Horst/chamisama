class Product < ApplicationRecord

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
    Product.where("colour = ? OR country = ?", color, country)
  end

  def highest_rating_comment
    comments.rating_desc.first #used on a single object
  end

  def lowest_rating_comment
    comments.rating_desc.last
  end

end
