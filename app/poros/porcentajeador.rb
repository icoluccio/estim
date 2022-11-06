# frozen_string_literal: true

class Porcentajeador
  def self.porcentaje(cosas, &)
    cuantas = cosas.select(&).size.to_f
    total = cosas.size
    Rails.logger.debug cuantas
    Rails.logger.debug total
    cuantas / total
  end
end
