require 'rails_helper'

RSpec.describe Question, type: :model do
  it "returns id and the question" do
    make_questions

    first_question = Question.first

    results = Question.get_id_and_question

    expect(results.first[1]).to eq(first_question.question)

  end
end
