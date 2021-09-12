module Api
  module V0
    class TournamentsController < ApplicationController
      def index
        tournaments = Tournament.all
        render json: { tournaments: tournaments.to_json }, status: 201
      end
    end
  end
end
