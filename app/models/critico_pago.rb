# frozen_string_literal: true

class CriticoPago < Critico
  PALABRAS = %w[asdf dfsadf].freeze # Usar faker

  def critica_positiva?(juego)
    juegos_pagos.include?(juego)
  end

  def texto
    PALABRAS.sample(5)
  end
end
