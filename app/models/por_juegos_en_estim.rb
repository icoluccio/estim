# frozen_string_literal: true

class PorJuegosEnEstim < Fijo
  def precio(juego)
    juego - (PlataformaEstim.last.juegos.size + super).max(50) - super
  end
end
