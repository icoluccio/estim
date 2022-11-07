# frozen_string_literal: true

# De cada juego se conoce su precio en dólares, que no puede cambiar.
class JuegoPagos < ApplicationRecord
  belongs_to :juego
  belongs_to :critico
end
