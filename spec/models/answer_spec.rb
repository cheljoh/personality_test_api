require "rails_helper"

RSpec.describe "AnswerSpec" do
  it "finds the questions" do

    make_questions
    answers = {"1"=>"1", "2"=>"3", "3"=>"4", "4"=>"2", "5"=>"5", "6"=>"5", "7"=>"1", "8"=>"3", "9"=>"2", "10"=>"5"}

    scores = Answer.new.find_questions_and_score(answers)

    expected = {"extraversion" => 2, "agreeableness" => 4, "conscientiousness" => 7, "emotional_stability" => 6, "intellect" => 6}

    expect(expected).to eq(scores)
  end
end
