FactoryBot.define do
  factory :post do
    title { Faker::Hipster.sentence }
    body { Faker::Hipster.paragraph }
    association(:user)
  end
end
