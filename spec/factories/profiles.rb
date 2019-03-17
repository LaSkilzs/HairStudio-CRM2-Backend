FactoryBot.define do
  factory :profile do
    first_name { "MyString" }
    last_name { "MyString" }
    birthday { "1978-02-2 14:04:33" }
    email { "MyString@example.com" }
    home { "908-765-2345" }
    mobile { "908-234-8765" }
    street_1 { "MyString" }
    street_2 { "MyString" }
    city { "MyString" }
    state { "MyString" }
    zip { "00000" }
    user 
  end
end
