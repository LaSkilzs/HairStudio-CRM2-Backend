FactoryBot.define do
  factory :product do
    name { "MyString" }
    size { "MyString" }
    quantity { "MyString" }
    cost { 1.5 }
    product_category
  end
end
