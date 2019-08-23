FactoryBot.define do
  factory :user do
    name {"テストユーザー"}
    email {"test@gmail.com"}
    password {"yuuma777"}
    password_confirmation {"yuuma777"}
  end
end
