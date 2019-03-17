FactoryBot.define do
  factory :appointment do
    hairstyle { "MyString" }
    date { "2019-03-16 18:35:34" }
    start { "2019-03-16 18:35:34" }
    duration { 1 }
    status { "pending" }
    service_total { 1 }
    user 
    stylist
  end
end
