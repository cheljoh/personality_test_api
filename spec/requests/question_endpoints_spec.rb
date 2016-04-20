require "rails_helper"

RSpec.describe "Question Endpoints Spec", type: :request do
  it "returns personality test questions" do
    make_questions

    question = Question.first

    get "/api/v1/questions"

    results = JSON.parse(response.body)
    expect(response.content_type).to eq("application/json")
    expect(response).to be_success
    expect(results["1"]).to eq(question.question)
    expect(results.count).to eq(Question.count)
  end
end
