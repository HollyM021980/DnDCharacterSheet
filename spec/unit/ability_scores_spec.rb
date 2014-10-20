require_relative '../../lib/models/ability_scores'

describe AbilityScores do

  ran = Random.new
  @strength = ran.rand(3..18)
  @constitution = ran.rand(3..18)
  @wisdom = ran.rand(3..18)
  @intelligence = ran.rand(3..18)
  @charisma = ran.rand(3..18)
  @dexterity = ran.rand(3..18)

  it "should generate a Abilities object" do
    ability_scores = AbilityScores.new(str: @strength, wis: @wisdom, cha: @charisma, int: @intelligence, con: @constitution, dex: @dexterity )

    expect { ability_scores.should be_a AbilityScores }
  end

  it "should store the params as class variables" do
    abils = AbilityScores.new(str: @strength, wis: @wisdom, cha: @charisma, int: @intelligence, con: @constitution, dex: @dexterity)
    expect(abils.instance_variable_get(:@strength)).to eql(@strength)
    expect(abils.instance_variable_get(:@constitution)).to eql(@constitution)
    expect(abils.instance_variable_get(:@wisdom)).to eql(@wisdom)
    expect(abils.instance_variable_get(:@dexterity)).to eql(@dexterity)
    expect(abils.instance_variable_get(:@intelligence)).to eql(@intelligence)
    expect(abils.instance_variable_get(:@charisma)).to eql(@charisma)
  end

  it "getters should return the correct values" do
    abils = AbilityScores.new(str: @strength, wis: @wisdom, cha: @charisma, int: @intelligence, con: @constitution, dex: @dexterity)
    expect(abils.strength).to eql(@strength)
    expect(abils.wisdom).to eql(@wisdom)
    expect(abils.charisma).to eql(@charisma)
    expect(abils.intelligence).to eql(@intelligence)
    expect(abils.constitution).to eql(@constitution)
    expect(abils.dexterity).to eql(@dexterity)
  end


  it "setters should update the instance variables" do
    abils = AbilityScores.new(str: @strength, wis: @wisdom, cha: @charisma, int: @intelligence, con: @constitution, dex: @dexterity)

    ran2 = Random.new
    @strength2 = ran2.rand(3..18)
    @constitution = ran2.rand(3..18)
    @wisdom = ran2.rand(3..18)
    @intelligence = ran2.rand(3..18)
    @charisma = ran2.rand(3..18)
    @dexterity = ran2.rand(3..18)

    abils.strength = @strength2
    expect(abils.instance_variable_get(:@strength)).to eql(@strength2)

    abils.constitution = @constitution2
    expect(abils.instance_variable_get(:@constitution)).to eql(@constitution2)

    abils.wisdom = @wisdom2
    expect(abils.instance_variable_get(:@wisdom)).to eql(@wisdom2)

    abils.wisdom = @dexterity2
    expect(abils.instance_variable_get(:@dexterity)).to eql(@dexterity2)

    abils.wisdom = @intelligence2
    expect(abils.instance_variable_get(:@intelligence)).to eql(@intelligence2)

    abils.wisdom = @charisma2
    expect(abils.instance_variable_get(:@charisma)).to eql(@charisma2)
  end

end
