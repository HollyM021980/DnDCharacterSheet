module AllCharacterRaces

  RACES = {
          "Human" =>    {
                         size: "Medium",
                         alignment: "Any",
                         ability_adj: {},
                         favored_class: "Any"
                        },
          "Dwarf" =>    {
                         size: "Medium",
                         ability_adj: {con: +2, cha: -2},
                         favored_class: "Fighter"
                        },
          "Elf" =>      {
                          size: "Medium",
                          ability_adj: {dex: +2, con: -2},
                          favored_class: "Wizard"
                        },
          "Gnome" =>    {
                          size: "Small",
                          ability_adj: {con: +2, str: -2},
                          favored_class: "Bard"
                        },
          "Half-Elf" => {
                          size: "Medium",
                          ability_adj: {},
                          favored_class: "Any"
                        },
          "Half-Orc" => {
                          size: "Medium",
                          ability_adj: {str: +2, int: -2, cha: -1},
                          favored_class: "Barbarian"
                        },
          "Halfling" => {
                          size: "Small",
                          ability_adj: {dex: +2, str: -2},
                          favored_class: "Rogue"
                        }
        }

  def assemble_race_names
    race_names = []
    RACES.each_key { | key | race_names << key }
    race_names
  end

  def racial_traits
    return RACES[@character_race]
  end

end
