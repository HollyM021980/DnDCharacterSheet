class CharacterRace < ActiveRecord::Migration
  def change
    create_table :character_races do |t|
      t.string :name, null: false
      t.belongs_to :character, index: true, null: false

      t.timestamps null: false
    end
  end
end
