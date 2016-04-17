class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      enable_extension("citext")
      t.citext :question
      t.citext :category
      t.integer :scale
      t.timestamps null: false
    end
  end
end
