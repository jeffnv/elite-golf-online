class StaticPagesController < ApplicationController
  def play
    if !session[:golfer_name] && !params[:golfer_name]
      redirect_to log_in_url 
    end
    session[:golfer_name] = params[:golfer_name] if params[:golfer_name]
    @champions = HighScore.order('score ASC').limit(15)
    @name = session[:golfer_name]
  end
  def base
    if !session[:golfer_name] && !params[:golfer_name]
      redirect_to log_in_url 
    end
    session[:golfer_name] = params[:golfer_name] if params[:golfer_name]
    @name = session[:golfer_name]
  end

  def log_in
    render :log_in
  end
end
