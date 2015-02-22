class ScoresController < ApplicationController
  respond_to :json

  def index
    @scores = Score.order('amount').limit(10)
    respond_with @scores
  end

  def create
    @score = Score.create(score_params)
    respond_with @score
  end

  def show
    @score = Score.find(params[:id])
    respond_with @score
  end

    private

      def score_params
        params.permit(:player_name, :amount, :token, :ip, :device_model, :device_type)
      end

end
