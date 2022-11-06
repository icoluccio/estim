# frozen_string_literal: true

class Directo < Descuento
  def precio(juego)
    juego.precio * (1 - multiplicador)
  end
end
