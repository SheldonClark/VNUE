FactoryGirl.define do
  factory :band do
    email "awesome@gmail.com"
    password "12345678"
    password_confirmation "12345678"
    #email validation test traits
    trait :email_empty do
      email nil
    end
    trait :email_blank do
      email " "
    end
    trait :email_wrong_format do
      email "awesomegmail.com"
    end
    #password validation test traits
    trait :password_too_short do
      password "1234"
      password_confirmation "1234"
    end
    trait :password_confirm_diff do
      password "123435678"
      password_confirmation "87654321"
    end
    trait :password_is_nil do
      password nil
      password_confirmation nil
    end
    trait :password_is_blank do
      password " "
      password_confirmation " "
    end
  end
end
