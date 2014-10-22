require_relative '../../lib/models/weapon'

describe AllWeapons do


  it "should generate a AllWeapons object" do
    # expect { FactoryGirl.build(:AllWeapons).should be_a AllWeapons }
    expect { AllWeapons.new(:light_hammer).should be_a AllWeapons }
  end

  it "should store the AllWeapons name as a class variable" do
    expect(AllWeapons.new(:light_hammer).instance_variable_get(:@weapon_name)).to eql(:light_hammer)
  end

end
