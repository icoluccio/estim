FactoryBot.define do
  factory :descuento do
    type { %w[directo fijo por_juegos_en_estim gratis].sample }
    multiplicador { Faker::Number.number(digits: 2) }
    descuento_fijo { Faker::Number.number(digits: 2) }
    juego
  end
end
