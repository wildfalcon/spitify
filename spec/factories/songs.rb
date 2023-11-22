FactoryBot.define do
  factory :song do
    title { "MyString" }
    performer { build(:user, email: "performer@test.com") }
    author { build(:user, email: "author@test.com") }
    release_date { Time.now - 1.day}
  end
end
