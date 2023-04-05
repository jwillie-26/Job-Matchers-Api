FactoryBot.define do
  factory :api_key do
    token { 'SomeRandomToken' }
  end

  factory :user do
    username { Faker::Name.unique.first_name }
    password { 'password' }
  end

  factory :job do
    company { 'Google' }
    description { 'Handle cool tech stuff' }
    position { 'senior developer' }
    salary { '100k' }
    location { 'san fransisco' }
  end

  factory :favorite do
    user
    job
  end
end
