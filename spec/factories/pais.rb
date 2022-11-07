FactoryBot.define do
  factory :pais do
    cotizacion { Faker::Number.number(digits: 2) }
  end
end
