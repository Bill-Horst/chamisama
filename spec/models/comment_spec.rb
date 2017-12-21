require 'rails_helper'

describe Comment do

  context "comment created" do
    let(:product) { FactoryBot.create(:product) }
    let(:user) { FactoryBot.create(:user) }

    it "contains body, rating, user, and product" do
      expect(Comment.new(body: "body body body", rating: 3, user: user, product: product)).to be_valid
      expect(Comment.new(body: "body body body", rating: 3, user: user)).not_to be_valid
      expect(Comment.new(body: "body body body", rating: 3, product: product)).not_to be_valid
      expect(Comment.new(body: "body body body", user: user, product: product)).not_to be_valid
      expect(Comment.new(rating: 3, user: user, product: product)).not_to be_valid
    end

  end

end
