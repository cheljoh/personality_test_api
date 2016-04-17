require 'csv'

namespace :import do

  desc "Import questions from csv"
  task questions: :environment do

    extraversion = Category.find_or_create_by(name: "Extraversion")
    agreeableness = Category.find_or_create_by(name: "Agreeableness")
    conscientiousness = Category.find_or_create_by(name: "Conscientiousness")
    intellect = Category.find_or_create_by(name: "Intellect")
    emotional_stability = Category.find_or_create_by(name: "Emotional Stability")

    puts "making categories"

    CSV.foreach("data/questions.csv", headers: true) do |row|
      puts "making questions"
      if row["category"] == "extraversion"
        Question.create(
          id:       row["id"],
          question: row["question"],
          scale: row["scale"],
          category_id: extraversion.id)
      elsif row["category"] == "agreeableness"
        Question.create(
          id:       row["id"],
          question: row["question"],
          scale: row["scale"],
          category_id: agreeableness.id)
      elsif row["category"] == "conscientiousness"
        Question.create(
          id:       row["id"],
          question: row["question"],
          scale: row["scale"],
          category_id: conscientiousness.id)
      elsif row["category"] == "intellect"
        Question.create(
          id:       row["id"],
          question: row["question"],
          scale: row["scale"],
          category_id: intellect.id)
      elsif row["category"] == "emotional_stability"
        Question.create(
          id:       row["id"],
          question: row["question"],
          scale: row["scale"],
          category_id: emotional_stability.id)
      end
    end
  end
end
