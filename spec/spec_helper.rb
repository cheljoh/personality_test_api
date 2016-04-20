require "simplecov"

module SpecHelpers

  def make_questions
    Question.create(question: "Are you really who you say you are", category: "extraversion", scale: 1)
    Question.create(question: "Are you coo", category: "agreeableness", scale: -1)
    Question.create(question: "Are you fun", category: "emotional_stability", scale: 1)
    Question.create(question: "Are you happy", category: "agreeableness", scale: 1)
    Question.create(question: "Are you awesome", category: "extraversion", scale: -1)
    Question.create(question: "Are you fine", category: "intellect", scale: 1)
    Question.create(question: "Are you nice", category: "intellect", scale: -1)
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
