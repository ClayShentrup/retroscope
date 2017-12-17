FactoryBot.define do
  factory :user do
    confirmed
    email('user@example.com')
    password('password')
  end

  trait :confirmed do
    before(:create, &:skip_confirmation!)
  end
end
