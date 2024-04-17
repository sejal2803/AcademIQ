class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.string :title
      t.text :description
      t.references :category, null: false, foreign_key: true
       t.references :user, null: false, foreign_key: true
      t.string :enrollment_status

      t.timestamps
    end
  end
end
