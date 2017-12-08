class Product < ApplicationRecord

  def self.search_by_name(search_term)
    if Rails.env.development?
      Product.where("name LIKE ?", "%#{search_term}%")
    elsif Rails.env.production?
      Product.where("name ilike ?", "%#{search_term}%")
    end
  end

  def self.search_by_tea_color(color)
    Product.where("colour = ?", "#{color}")
  end

  def self.search_by_country(country)
    Product.where("country = ?", "#{country}")
  end

end
