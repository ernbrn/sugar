FactoryGirl.define do
  factory :student do
    sequence(:name) { |n| "Name #{n}" }
    email "Email"
    blurb "Blurb"
    bio "Bio"
    password "password"
  end
end