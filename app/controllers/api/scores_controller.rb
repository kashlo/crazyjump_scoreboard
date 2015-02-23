module Api
  class ScoresController < Api::ApiController
    respond_to :json

    def index
      @scores = Score.order('amount').limit(10)
      respond_with @scores
    end

    def create
      @score = Score.create(score_params.merge(ip: request.remote_ip))
      respond_with @score
    end

      private

        def score_params
          params.permit(:player_name, :amount, :token, :device_model, :device_id, :device_type)
        end

  end
end
