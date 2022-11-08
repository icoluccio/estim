# frozen_string_literal: true

class CriticoPago < Critico
  has_many :juego_pagos, dependent: :destroy
  PALABRAS = %w[asdf dfsadf].freeze # Usar faker

  def critica_positiva?(juego)
    juego_pagos.include?(juego)
  end

  def texto
    PALABRAS.sample(5).join(' ')
  end
end
