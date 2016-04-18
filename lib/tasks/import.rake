require 'csv'

namespace :import do

  desc "Import questions from csv"
  task questions: :environment do
    CSV.foreach("data/questions.csv", headers: true) do |row|
      puts "making questions"
      Question.create(row.to_h)
    end
  end
end
