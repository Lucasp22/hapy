class CreateBoxes < ActiveRecord::Migration[5.2]
  def change
    create_table :boxes do |t|
      t.text :title
      t.text :image
      t.boolean :in
      t.boolean :empty
      t.text :location
      
      t.integer :user_id
      t.timestamps
    end
  end
end
