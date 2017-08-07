FactoryGirl.define do
  factory :user do
    username "foo"
    password  "foobar"
    email { "foo@example.com" }
  end

  # factory :recipe do
  #   user
  #   password  "foobar"
  #   email { "#{username}@example.com" }
  # end

end