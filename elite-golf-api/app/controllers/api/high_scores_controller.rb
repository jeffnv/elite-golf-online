class Api::HighScoresController < ApplicationController
  def index
    render :json => HighScore.all
  end

  def create
    score = HighScore.new(high_score_params)
    score.name = session[:golfer_name]
    if score.save
      render json: score
    else
      render json: {errors: score.errors.full_messages}, status: 422
    end
  end

  def high_score_params
    params.require(:high_score).permit(:score)
  end
end
