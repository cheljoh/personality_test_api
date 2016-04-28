require "rails_helper"

RSpec.describe "AnswerEndpointSpec", type: :request do

  it "returns results when given answers" do
    make_questions

    answers = {"1"=>"1", "2"=>"3", "3"=>"4", "4"=>"2", "5"=>"5", "6"=>"5", "7"=>"1", "8"=>"3", "9"=>"2", "10"=>"5"}

    post "/api/v1/answers", { "answers" => answers }

    results = JSON.parse(response.body)

    expected = {"extraversion" => 2, "agreeableness" => 4, "conscientiousness" => 7, "emotional_stability" => 6, "intellect" => 6}

    expect(expected).to eq(results)
  end
end
