class ScoresController < ApplicationController

  def index
    @scores_count = Score.count
    @scores = Score.page params[:page]
  end

end
