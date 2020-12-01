class CreateContents < ActiveRecord::Migration[6.0]
  def change
    create_table :contents do |t|
      t.string :title
      t.integer :level
      t.integer :instructor_id
      t.integer :course_id
      t.string :content_type
      t.string :material
      t.integer :likes

      t.timestamps
    end
  end
end
