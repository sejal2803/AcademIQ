class CreateQuizzes < ActiveRecord::Migration[6.0]
  def change
    create_table :quizzes do |t|
      t.string :title
      t.text :description
      t.integer :time_limit
      t.references :course, null: false, foreign_key: true

      t.timestamps
    end
  end
end
