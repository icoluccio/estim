# frozen_string_literal: true

class Descuento < ApplicationRecord
  belongs_to :juego

  def precio(juego); end
end
