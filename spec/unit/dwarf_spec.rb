require_relative '../../lib/models/dwarf'


describe Dwarf do

  it "should generate a Dwarf object" do
    char_dwarf = Dwarf.new("Eldeth", "Female", 45)

    expect { char_dwarf.should be_a Dwarf }
  end

  it "should store the params as class variables" do
    amber = Dwarf.new("Amber", "Female", 23)
    expect(amber.instance_variable_get(:@dwarf_name)).to eql("Amber")
    expect(amber.instance_variable_get(:@dwarf_gender)).to eql("Female")
    expect(amber.instance_variable_get(:@dwarf_age)).to eql(23)
  end


end
