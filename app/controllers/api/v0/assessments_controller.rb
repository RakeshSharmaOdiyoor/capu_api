module Api
  module V0
    class AssessmentsController < ApplicationController
      before_action :find_player
      def index
        assessments = @player.assessments.all
        render json: { assessments: assessments.to_json }, status: 201
      end

      private

      def find_player
        player_id = params["id"]
        render json: { error: 'The request url doesnot exist' }, status: 400 if player_id.blank?

        begin
          @player = Player.find(player_id)
        rescue
          render json: { error: 'The request url doesnot exist' }, status: 400 if @player.blank?
        end
      end
    end
  end
end
