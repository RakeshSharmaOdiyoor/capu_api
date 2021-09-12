module Api
  module V0
    class TeamsController < ApplicationController
      before_action :find_tournament
      def index
        teams = @tournament.teams.all
        render json: { teams: teams.to_json }, status: 201
      end

      private

      def find_tournament
        tournament_id = params["id"]
        render json: { error: 'The request url doesnot exist' }, status: 400 if tournament_id.blank?

        begin
          @tournament = Tournament.find(tournament_id)
        rescue
          render json: { error: 'The request url doesnot exist' }, status: 400 if @tournament.blank?
        end
      end
    end
  end
end
