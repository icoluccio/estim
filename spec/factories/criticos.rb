FactoryBot.define do
  factory :critico do
    type { %w[usuario critico critico_pago revista].sample }
    criticos { create_list(:critico, 2, type: 'usuario') }
    actitud_positiva { [true, false].sample }
  end

  factory :critica do
    contenido { Faker::Lorem.sentence(word_count: 7) }
    critica_positiva { [true, false].sample }
    juego
  end
end
