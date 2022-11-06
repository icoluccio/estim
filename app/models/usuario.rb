# frozen_string_literal: true

class Usuario < Critico
  def critica_positiva?(_juego)
    actitud_positiva
  end

  def texto
    critica_positiva? ? 'SI' : 'NO'
  end
end
