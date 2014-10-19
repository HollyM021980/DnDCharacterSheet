require_relative '../../lib/models/weapon'

describe Weapon do


  it "should generate a Weapon object" do
    expect { FactoryGirl.build(:weapon).should be_a Weapon }
  end

  it "should store the weapon name as a class variable" do
    expect(FactoryGirl.build(:weapon).instance_variable_get(@weapon_name)).to eql(:spear)
  end

end
