# frozen_string_literal: true

class Critica < ApplicationRecord
  MINIMO_PARA_LITERARIO = 100
  belongs_to :juego

  def es_literaria?
    contenido.size > MINIMO_PARA_LITERARIO
  end
end
