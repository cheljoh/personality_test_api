require "rails_helper"

RSpec.decribe "Question Endpoints Spec", type: :request do
  it "returns personality test questions" do
    Question.create(question: "Are you really who you say you are", category: "extraversion", 1)
    Question.create(question: "Are you coo", category: "agreeableness", 1)
    get "api/v1/questions"
  end
end
