FactoryBot.define do
  factory :critico do
    type { %w[Usuario Critico CriticoPago Revista].sample }
    criticos { create_list(:critico, 2, type: 'Usuario') }
    actitud_positiva { [true, false].sample }
  end

  factory :critica do
    contenido { Faker::Lorem.sentence(word_count: 7) }
    critica_positiva { [true, false].sample }
    juego
  end
end
