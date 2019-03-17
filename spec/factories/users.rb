FactoryBot.define do
  factory :user, aliases: [:stylist] do
    username { "MyString" }
    password_digest { "MyString" }
    role { "client" }
    image { "MyString" }
    salon 
  end
end
