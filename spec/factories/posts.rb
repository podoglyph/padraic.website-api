FactoryGirl.define do
  factory :post do
    title { Faker::FamilyGuy.quote }
    content {Faker::Seinfeld.quote}
  end
end
