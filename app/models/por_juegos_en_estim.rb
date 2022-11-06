# frozen_string_literal: true

class PorJuegosEnEstim < Fijo
  def precio(juego)
    juego - (Estim.juegos.size + super).max(50) - super
  end
end
