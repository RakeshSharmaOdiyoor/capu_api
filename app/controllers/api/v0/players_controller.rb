module Api
  module V0
    class PlayersController < ApplicationController
      before_action :find_team
      def index
        players = @team.players.all
        render json: { players: players.to_json }, status: 201
      end

      private

      def find_team
        team_id = params["id"]
        render json: { error: 'The request url doesnot exist' }, status: 400 if team_id.blank?
        
        begin
        	@team = Team.find(team_id)
        rescue
        	render json: { error: 'The request url doesnot exist' }, status: 400 if @team.blank?
        end
      end
    end
  end
end
