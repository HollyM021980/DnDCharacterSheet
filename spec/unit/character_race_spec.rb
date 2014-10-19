require 'spec_helper'
require_relative '../../lib/models/character_race'

describe CharacterRace do

  it "should generate a CharacterRace object" do
    char_race = CharacterRace.new("Hill Dwarf")
    expect { char_race.should be_a CharacterRace }
  end

  it "should generate an array of Character Race Names" do
    race_names = CharacterRace.new("Hill Dwarf").assemble_race_names
    expect {race_names.should be_an_instance_of Array}
    expect {race_names.should == ["Hill Dwarf", "Mountain Dwarf", "High Elf", "Wood Elf", "Halfling"]}
  end

end
