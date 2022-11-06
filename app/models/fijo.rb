# frozen_string_literal: true

class Fijo < Descuento
  def precio(juego)
    juego.precio - descuento_fijo
  end
end
