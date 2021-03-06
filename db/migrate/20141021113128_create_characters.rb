class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :race
      t.string :name
      t.integer :age
      t.string :gender
      t.boolean :public_flag
      t.belongs_to :user, index: true, null: false

      t.timestamps null: false
    end
  end
end
