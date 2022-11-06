# frozen_string_literal: true

class Revista < Critico
  def critica_positiva?(juego)
    porcentaje = Porcentajeador.porcentaje(criticos) { |critico| critico.critica_positiva?(juego) }
    porcentaje >= 0.5
  end

  def texto
    criticos.reduce('') { |critico, critica_conjunta| [critica_conjunta, critico.texto].join(' ') }
  end
end
