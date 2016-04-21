require "rails_helper"

RSpec.describe "AnswerSpec" do
  it "finds the questions" do

    make_questions
    answers = {"1"=>"1", "2"=>"3", "3"=>"4", "4"=>"2", "5"=>"5", "6"=>"5", "7"=>"1", "8"=>"3", "9"=>"2", "10"=>"5"}

    scores = Answer.find_questions_and_score(answers)

    require "pry"; binding.pry

  end

end
