class CreateAssignments < ActiveRecord::Migration[6.0]
  def change
    create_table :assignments do |t|
      t.string :title
      t.text :description
      t.date :deadline
      t.references :course, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.date :submission_date
      t.integer :grade

      t.timestamps
    end
  end
end
