module Api
  module V1
    class AnswersController < ApiController
      respond_to :json

      def create
        results = Answer.find_questions_and_score(params["answers"])
        respond_with results
        # do calculations
        # respond_to or with with the results
      end
    end
  end
end
