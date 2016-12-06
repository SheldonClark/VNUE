FactoryGirl.define do
  factory :band do
    email "awesome@gmail.com"
    password "1234"
    password_confirmation "1234"
    trait :email_empty do
      email nil
    end
    trait :email_blank do
      email " "
    end
    trait :email_wrong_format do
      email "awesomegmail.com"
    end
  end
end
