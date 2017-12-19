require 'rails_helper'

describe Product do

  context "when the product has comments" do
    let(:product) { Product.create!(name: "race bike", image_url: "houjicha.jpg", price: 35) }
    let(:user) { User.create!(email: "test@test.com", password: "test11") }

    before do
      product.comments.create!(rating: 1, user: user, body: "Awful bike!")
    end
    before do
      product.comments.create!(rating: 3, user: user, body: "Ok bike!")
    end
    before do
      product.comments.create!(rating: 5, user: user, body: "Great bike!")
    end

    it "returns the average rating of all comments" do
      expect(product.average_rating).to eq 3
    end

    it "returns lowest rating" do
      expect(product.lowest_rating_comment.body).to eq "Awful bike!"
    end

    it "returns highest rating" do
      expect(product.highest_rating_comment.body).to eq "Great bike!"
    end
  end

  context "product created" do
    it "is valid only if image_url, name, price are present" do
      expect(Product.new(image_url: "houjicha.jpg", name: "jaja", price: "3")).to be_valid
      expect(Product.new(image_url: "houjicha.jpg", name: "jaja")).not_to be_valid
      expect(Product.new(image_url: "houjicha.jpg", price: "3")).not_to be_valid
      expect(Product.new(name: "jaja", price: "3")).not_to be_valid
    end
  end

  context "when the product is created with a price" do
    it "is not valid unless price is a number" do
      expect(Product.new(name: "tea", image_url: "houjicha.jpg", price: "cat")).not_to be_valid
      expect(Product.new(name: "tea", image_url: "houjicha.jpg", price: true)).not_to be_valid
      expect(Product.new(name: "tea", image_url: "houjicha.jpg", price: "")).not_to be_valid
      expect(Product.new(name: "tea", image_url: "houjicha.jpg", price: "8")).to be_valid
      expect(Product.new(name: "tea", image_url: "houjicha.jpg", price: "8.33")).to be_valid
    end
  end

end
