class GamesController < ApplicationController

  def index
  	@games = Game.all
  	render json: @games
  end

  def create
  	@game = Game.create(state: params["state"])
  	render json: @game
  end

  def show
  	@game = Game.find(params[:id])
  	render json: @game, status: 200
  end

  def update
    @game = Game.find(params[:id])
    @game.update(state: params["game"]["state"])
    render json: @game, status: 200
  end
end

