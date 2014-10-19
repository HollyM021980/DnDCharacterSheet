class CharacterRace

  RACES = { "Dwarf" => {subraces: ["Hill Dwarf", "Mountain Dwarf"]},
          "Elf" => {subraces: ["High Elf", "Wood Elf"]},
          "Halfling" => {subraces:[]}
        }

  def initialize(race)
    @character_race = race
  end

  def assemble_race_names
    race_names = []
    RACES.each_key do | key |
      if RACES[key][:subraces].empty?
        race_names << key
      else
        RACES[key][:subraces].each { |subrace| race_names << subrace }
      end
    end
    race_names
  end

end
