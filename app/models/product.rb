class Product < ApplicationRecord

  belongs_to :order

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

end
