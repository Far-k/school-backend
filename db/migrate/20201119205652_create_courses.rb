class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.integer :level
      t.integer :subject_id
      

      t.timestamps
    end
  end
end