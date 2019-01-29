FactoryGirl.define do
  factory :post do
    title "my post"
    body "the awsome post"
    association(:user)
  end
end
