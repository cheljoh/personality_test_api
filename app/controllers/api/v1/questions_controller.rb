module Api
  module V1
    class QuestionsController < ApiController
      respond_to :json

      def index
        respond_with Question.get_id_and_question
      end
    end
  end
end
