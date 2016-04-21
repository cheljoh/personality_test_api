class Answer

  def initialize
    @scores_by_category = Hash.new(0)
  end

  def find_questions_and_score(answers) #first do it with positive answers
    answers.each do |id, score|
      question = Question.find(id)
      score_answers(question, score)
    end
    @scores_by_category
  end

  def score_answers(question, score) #if negative, then a hash
    if question.scale == 1
      @scores_by_category[question.category] += score.to_i
    else question.scale == -1
      negative_scores = {"1" => 5, "2" => 4, "3" => 3, "4" => 2, "5" => 1}
      @scores_by_category[question.category] += negative_scores[score]
    end
  end

end
