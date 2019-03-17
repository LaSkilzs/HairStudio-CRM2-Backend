FactoryBot.define do
  factory :message do
    name { "MyString" }
    email { "MyString" }
    phone { "MyString" }
    message { "" }
    salon { nil }
  end
end
