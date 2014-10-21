class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :age
      t.string :gender
      t.integer :level
      t.boolean :public_flag
      t.belongs_to :user, index: true

      t.timestamps null: false
    end
  end
end
