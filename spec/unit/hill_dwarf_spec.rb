require_relative '../../lib/models/hill_dwarf'


describe HillDwarf do

  it "should generate a Hill Dwarf object" do
    char_hill_dwarf = HillDwarf.new("Baern", "Male", 25)

    expect { char_hill_dwarf.should be_a HillDwarf }
  end

    it "should store the params as class variables" do
    amber = HillDwarf.new("Baern", "Male", 25)
    expect(amber.instance_variable_get(:@dwarf_name)).to eql("Baern")
    expect(amber.instance_variable_get(:@dwarf_gender)).to eql("Male")
    expect(amber.instance_variable_get(:@dwarf_age)).to eql(25)
  end


end
