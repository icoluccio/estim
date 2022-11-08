class DescuentosController < ApplicationController
  def index
    @descuentos = Descuento.all
    render json: @descuentos
  end

  def show
    @descuento = Descuento.find(params[:id])
    render json: @descuento
  end
end
