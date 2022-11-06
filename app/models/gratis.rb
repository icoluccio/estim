# frozen_string_literal: true

class Gratis < Descuento
  def precio(_juego)
    0
  end
end
