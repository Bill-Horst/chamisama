FactoryBot.define do

  factory :comment do
    user_id 1
    body "Test comment"
    rating 4
  end

  factory :product do
    name "Test Tea"
    description "Good tea for waking up"
    image_url "http://test"
    colour "green"
    price_in_pennies "5.99"
  end

end
