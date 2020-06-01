FactoryBot.define do
  factory :access_token do
    sequence(:token) { |n| "MyToken #{n} " }
    user { "John Smith" }
  end
end
