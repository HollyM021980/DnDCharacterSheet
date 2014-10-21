require_relative '../../lib/models/character_class'

describe AllCharacterClasses do

  it "should generate a AllCharacterClasses object" do
    # char_class = FactoryGirl.build(:character_class, character_class: "Cleric")
    char_class = AllCharacterClasses.new("Wizard")
    expect { char_class.should should be_an_instance_of  AllCharacterClasses }
  end

  it "should generate an array of class names" do
    # class_names = FactoryGirl.build(:character_class).assemble_class_names
    class_names = AllCharacterClasses.new("Wizard").assemble_class_names
    expect {class_names.should be_an_instance_of Array}
    expect {class_names.should == ["Cleric", "Fighter", "Rogue", "Wizard", "Bard", "Barbarian"]}
  end
end
