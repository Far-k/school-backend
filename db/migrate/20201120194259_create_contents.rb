class CreateContents < ActiveRecord::Migration[6.0]
  def change
    create_table :contents do |t|
      t.integer :course_id
      t.integer :instructor_id
      t.string :content_type
      t.string :material
      t.integer :likes

      t.timestamps
    end
  end
end
