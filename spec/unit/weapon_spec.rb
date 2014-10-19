require_relative '../../lib/models/weapon'

describe Weapon do


  it "should generate a Weapon object" do
    # expect { FactoryGirl.build(:weapon).should be_a Weapon }
    expect { Weapon.new(:light_hammer).should be_a Weapon }
  end

  it "should store the weapon name as a class variable" do
    expect(Weapon.new(:light_hammer).instance_variable_get(:@weapon_name)).to eql(:light_hammer)
  end

end
