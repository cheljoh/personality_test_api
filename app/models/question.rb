class Question < ActiveRecord::Base

  def self.get_id_and_question
    pluck(:id, :question).map{|t| [t].to_h}
  end
end
