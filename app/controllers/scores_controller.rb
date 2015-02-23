class ScoresController < ApplicationController

  def index
    @scores = Score.page params[:page]
  end

end
