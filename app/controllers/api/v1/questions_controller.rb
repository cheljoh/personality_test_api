module Api
  module V1
    class QuestionsController < ApiController
      respond_to :json

      def index
        respond_with Question.all
      end
    end
  end
end
