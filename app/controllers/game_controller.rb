require 'game'
class GameController < ApplicationController
  def game
    @grid = generate_grid(10)
    @start = Time.now

  end

  def score
    @attempt = params[:attempt]
    @grid = params[:grid].split("")

    @result = run_game(@attempt, @grid, params[:start], Time.now)

  end


end
