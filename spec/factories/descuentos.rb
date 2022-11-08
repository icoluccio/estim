FactoryBot.define do
  factory :descuento do
    type { %w[Directo Fijo PorJuegosEnEstim Gratis].sample }
    multiplicador { Faker::Number.number(digits: 2) }
    descuento_fijo { Faker::Number.number(digits: 2) }
    juego
  end
end
