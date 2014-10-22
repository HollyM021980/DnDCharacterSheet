class CreateCharacterClasses < ActiveRecord::Migration
  def change
    create_table :character_classes do |t|
      t.string :class_name, null: false
      t.integer :level, null: false;
      t.belongs_to :character, index: true, null: false;

      t.timestamps null: false
    end
  end
end
