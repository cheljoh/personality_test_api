require "simplecov"

module SpecHelpers

  def make_questions
    Question.find_or_create_by(id: 1, question: "Am the life of the party", category: "extraversion", scale: 1)
    Question.find_or_create_by(id: 2, question: "Feel little concern for others", category: "agreeableness", scale: -1)
    Question.find_or_create_by(id: 3, question: "Am always prepared", category: "conscientiousness", scale: 1)
    Question.find_or_create_by(id: 4, question: "Get stressed out easily", category: "emotional_stability", scale: -1)
    Question.find_or_create_by(id: 5, question: "Have a rich vocabulary", category: "intellect", scale: 1)
    Question.find_or_create_by(id: 6, question: "Don't talk a lot", category: "extraversion", scale: -1)
    Question.find_or_create_by(id: 7, question: "Am interested in people", category: "agreeableness", scale: 1)
    Question.find_or_create_by(id: 8, question: "Leave my belongings around", category: "conscientiousness", scale: -1)
    Question.find_or_create_by(id: 9, question: "Am relaxed most of the time", category: "emotional_stability", scale: 1)
    Question.find_or_create_by(id: 10, question: "Have difficulty understanding abstract ideas", category: "intellect", scale: -1)
  end
end

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end
  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end
  config.include SpecHelpers
  SimpleCov.start("rails")
end
