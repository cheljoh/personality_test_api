class RenameCategoryTable < ActiveRecord::Migration
  def change
    rename_table :question_categories, :categories
  end
end
