FactoryBot.define do
  factory :user do
    username { "MyString" }
    password_digest { "MyString" }
    role { "MyString" }
    image { "MyString" }
    salon { nil }
  end
end
