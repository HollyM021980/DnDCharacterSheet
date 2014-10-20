require 'spec_helper'
require_relative '../../lib/models/character_race'

describe CharacterRace do

  it "should generate a CharacterRace object" do
    char_race = CharacterRace.new("Dwarf")
    expect { char_race.should be_a CharacterRace }
  end

  it "should generate an array of Character Race Names" do
    race_names = CharacterRace.new("Dwarf").assemble_race_names
    expect {race_names.should be_an_instance_of Array}
    expect {race_names.should == ["Human", "Dwarf", "Elf", "Gnome", "Half-Elf", "Half-Orc", "Halfling"]}
  end

  it "should set the character race instance variable" do
    char_race = CharacterRace.new("Dwarf")
    expect(char_race.instance_variable_get(:@character_race)).to eql("Dwarf")
  end

  it "should return a hash of racial traits" do
    char_race = CharacterRace.new("Elf")
    traits = char_race.racial_traits
    expect { (traits[:size]).should == "Medium" }
    expect { (traits[:ability_adj][:dex]).should == +2 }
    expect { (traits[:ability_adj][:con]).should == -2 }
    expect { (traits[:favored_class]).should == "Wizard" }
  end

end
