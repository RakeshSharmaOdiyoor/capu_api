module Api
  module V0
    class NotesController < ApplicationController
      before_action :find_assessment
      def index
        notes = @assessment.notes.all
        render json: { notes: notes.to_json }, status: 201
      end

      private

      def find_assessment
        assessment_id = params["id"]
        render json: { error: 'The request url doesnot exist' }, status: 400 if assessment_id.blank?

        begin
          @assessment = Assessment.find(assessment_id)
        rescue
          render json: { error: 'The request url doesnot exist' }, status: 400 if @assessment.blank?
        end
      end
    end
  end
end
