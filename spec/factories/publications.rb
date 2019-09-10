FactoryBot.define do
  factory :publication do
    name { Faker::Company.name }
    email { "#{name}@gmail.com".downcase}
    mobile_number { "94524"+rand(10000..99999).to_s }
  end
end