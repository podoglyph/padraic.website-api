FactoryGirl.define do
  factory :user do
    name { Faker::GameOfThrones.character }
    email 's@s.com'
    password 'password'
  end
end
