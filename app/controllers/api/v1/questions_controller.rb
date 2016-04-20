module Api
  module V1
    class QuestionsController < ApiController
      respond_to :json

      def index
        respond_with Question.pluck(:id, :question).to_h
      end
    end
  end
end
