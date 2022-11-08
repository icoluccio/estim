class CriticosController < ApplicationController
  def index
    @criticos = Critico.all
    render json: @criticos
  end

  def show
    @critico = Critico.find(params[:id])
    render json: @critico
  end

  def criticar_juego
    @critico = Critico.find(params[:id])
    @juego = Juego.find(params[:juego_id])
    @critico.criticar!(@juego)
    render json: @juego
  end
end
