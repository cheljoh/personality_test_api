module Api
  module V1
    class AnswersController < ApiController
      respond_to :json

      def create
        results = Answer.new.find_questions_and_score(params["answers"])
        respond_with results, location: params["location"]
      end
    end
  end
end
