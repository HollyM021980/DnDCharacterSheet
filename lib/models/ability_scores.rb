class AbilityScores
  attr_accessor :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma

  def initialize(str:, dex:, con:, int:, wis:, cha:)
    @strength = str
    @dexterity = dex
    @constitution = con
    @intelligence = int
    @wisdom = wis
    @charisma = cha
  end

end
