class GamesController < ApplicationController

  def new
    @game = Game.new
  end
  
  def create
    @game = Game.new(game_params)
  end

  def index
    @games = Game.order('id ASC')
  end

  def show

  end

  def update

  end

  def delete

  end

  def cargo_params
    params.require(:game).permit(:name, :developer, :publisher, :avg_length, :description)
  end
end
