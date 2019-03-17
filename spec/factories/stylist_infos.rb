FactoryBot.define do
  factory :stylist_info do
    certification { "MyString" }
    organization { "MyString" }
    license { false }
    license_id { "MyString" }
    renewal { "2019-03-16 18:37:16" }
    about_summary { "MyText" }
    webpic { "MyString" }
    user_id { 1 }
  end
end
