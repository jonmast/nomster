FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "user#{n}@example.com" }
    password 'Passw@rd'
  end

  factory :comment do
    sequence(:message) { |n| "Comment #{n}" }
    rating { Comment::RATINGS.values.sample }
    user
  end

  factory :place do
    sequence(:name) { |n| "Place #{n}" }
    description 'Simply awesome place!'
    address 'MyStreet Mytown, St 12345'
    user
  end
end
