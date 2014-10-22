module AllCharacterClasses

  ABILITY_DEFAULTS = {}

  # The keys represent the character class name
  CHARACTER_CLASSES =
    { "Cleric" => {
        description: "A priestly champion who wields divine magic in service of a higher power.",
        starting_wealth: "",
        hit_die: "d8",
        primary_ability: ["Wisdom"],
        armor_proficiency: ["Light Armor", "Medium Armor", "Shield"],
        weapon_proficiency: ["Simple Melee Weapons"]
        },
      "Fighter" => {
        description: "A master of martial combat, skilled with a variety of weapons and armor",
        starting_wealth: "",
        hit_die: "d10",
        primary_ability: ["Strength", "Dexterity"],
        armor_proficiency: ["Light Armor", "Medium Armor", "Heavy Armor", "Shield"],
        weapon_proficiency: ["Simple Melee Weapons", "Simple Ranged Weapons", "Martial Melee Weapons", "Martial Ranged Weapons"]
        },
      "Rogue" => {
        description: "A scoundrel who uses stealth and trickery to overcome obstacles and enemies.",
        starting_wealth: "",
        hit_die: "d6",
        primary_ability: ["Dexterity"],
        armor_proficiency: ["Light Armor"],
        weapon_proficiency: ["Simple Melee Weapons", "Hand Crossbows", "Longswords", "Rapiers", "Shortswords"]
        },
      "Wizard" => {
        description: "A scholarly magic-user capable of manipulating the structures of reality.",
        starting_wealth: "",
        hit_die: "d4",
        primary_ability: ["Intelligence"],
        armor_proficiency: ["Light Armor", "Medium Armor", "Shield", "Simple Melee Weapons"],
        weapon_proficiency: ["Daggers", "Darts", "Sling", "Quarterstaff", "light Crossbow"]
      },
      "Bard" => {
        description: " A performer whose music works magic—a wanderer, a tale- teller, and a jack-of-all trades.",
        hit_die: "d6",
        primary_ability: ["Intelligence", "Charisma"],
        armor_proficiency: ["Light Armor", "Shields"],
        weapon_proficiency: ["Simple", "Longswords", "Rapiers", "Shortswords", "Shortbow", "Whip"]
      },
      "Barbarian" => {
        description: "A ferocious warrior who uses fury and instinct to bring down foes.",
        hit_die: "d12",
        primary_ability: ["Strength"],
        armor_proficiency: ["Light Armor", "Medium Armor", "Shields"],
        weapon_proficiency: ["Simple", "Martial", ],
       },
  }



  # Input:  none
  # Return: Array of class name strings
  def assemble_class_names
    CHARACTER_CLASSES.keys
  end

end

