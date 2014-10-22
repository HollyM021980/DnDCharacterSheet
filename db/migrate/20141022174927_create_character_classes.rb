class CreateCharacterClasses < ActiveRecord::Migration
  def change
    create_table :character_classes do |t|
      t.string :class_name, null: false
      t.integer :level, null: false;
      t.belongs_to :character, index: true, null: false;

      t.timestamps null: false
    end
    add_index :character_classes, [:character_id, :class_name, :level], :name => 'ind_chclass_on_ch_id_and_chname_and_level', :unique=>true
  end
end
