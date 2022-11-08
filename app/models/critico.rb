# frozen_string_literal: true

class Critico < ApplicationRecord
  def criticar!(juego)
    juego.agregar_critica!(escribir_critica(juego))
    juego.save!
  end

  def escribir_critica(juego)
    Critica.new(contenido: texto, critica_positiva: critica_positiva?(juego))
  end

  def texto; end

  def critica_positiva?(juego); end
end
