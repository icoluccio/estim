# frozen_string_literal: true

class Pais < ApplicationRecord
  def precio(precio_bruto)
    cotizacion * precio_bruto
  end

  def puede_venderse(juego)
    caracteristicas_prohibidas.none? { |caracteristica| juego.incluye_caracteristica?(caracteristica) }
  end
end
