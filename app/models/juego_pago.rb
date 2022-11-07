class JuegoPago < ApplicationRecord
  belongs_to :juego
  belongs_to :critico
end
