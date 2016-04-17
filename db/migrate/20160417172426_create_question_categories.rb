class CreateQuestionCategories < ActiveRecord::Migration
  def change
    create_table :question_categories do |t|
      enable_extension("citext")
      t.citext :name
      t.timestamps null: false
    end
  end
end
