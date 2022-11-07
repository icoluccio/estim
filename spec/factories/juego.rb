FactoryBot.define do
  factory :juego do
    precio { Faker::Number.number(digits: 2) }
    caracteristicas { Faker::Marketing.buzzwords.split }

    after(:build) do |juego|
      juego.criticas = build_list(:critica, 2, juego:)
      juego.descuento = build(:descuento, juego:)
    end
  end
end
