class Answer

  def initialize
    @scores_by_category = Hash.new(0)
  end

  def self.find_questions_and_score(answers) #first do it with positive answers
    # require "pry"; binding.pry
    answers.each do |id, score|
      question = Question.find(id)
      score_answers(question, score)
    end
    @scores_by_category
  end

  def self.score_answers(question, score)
    @scores_by_category[question.category] += score.to_i
  end

end
