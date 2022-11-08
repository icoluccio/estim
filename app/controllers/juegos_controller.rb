class JuegosController < ApplicationController
  def index
    @juegos = Juego.all
    render json: @juegos
  end

  def show
    @juego = Juego.find(params[:id])
    render json: @juego
  end
end
