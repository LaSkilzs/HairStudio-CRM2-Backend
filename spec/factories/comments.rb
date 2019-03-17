FactoryBot.define do
  factory :comment do
    message { "MyText" }
    user { nil }
    post { nil }
  end
end
