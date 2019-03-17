FactoryBot.define do
  factory :gallery do
    image { "MyString" }
    gallery_category { nil }
    gallerable { nil }
    gallerable_type { "MyString" }
  end
end
