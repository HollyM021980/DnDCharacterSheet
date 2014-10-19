class Armor
ARMOR = {
    "Light Armor" => {
        padded: {
          description: "Padded armor consists of quilted layers of cloth and batting.",
          cost: "5 gp",
          armor_class: {initial: 11, modifier: "dexterity", max: nil},
          strength: "",
          stealth: "Disadvantage",
          weight: 8
          },
        leather: {
          description: "The breastplate and shoulder protectors of this armor are made of leather that has been stiffened by being boiled in oil. The rest of the armor is made of softer and more flexible materials.",
          cost: "10 gp",
          armor_class: {initial: 11, modifier: "dexterity", max: nil},
          strength: "",
          stealth: "",
          weight: 10
          },
        studed_leather: {
          description: "Made from tough but flexible leather, studded leather is reinforced with close-set rivets or spikes.",
          cost: "45 gp",
          armor_class: {initial: 12, modifier: "dexterity", max: nil},
          strength: "",
          stealth: "",
          weight: 13
        }
      },
    "Medium Armor" => {
        hide: {
          description: "This crude armor consists of thick furs and pelts. It is commonly worn by barbarian tribes, evil humanoids, and other folk who lack access to the tools and materials needed to create better armor.",
          cost: "10 gp",
          armor_class: {initial: 11, modifier: "dexterity", max: 2},
          strength: "",
          stealth: "",
          weight: 12
          },
        chain_shirt: {
          description: "Made of interlocking metal rings, a chain shirt is worn between layers of clothing or leather. This armor offers modest protection to the wearer’s upper body and allows the sound of the rings rubbing against one another to be muffled by outer layers.",
          cost: "50 gp",
          armor_class: {initial: 13, modifier: "dexterity", max: 2},
          strength: "",
          stealth: "",
          weight: 20
          },
        scale_mail: {
          description: "his armor consists of a coat and leggings (and perhaps a separate skirt) of leather covered with overlapping pieces of metal, much like the scales of a fish. The suit includes gauntlets.",
          cost: "50 gp",
          armor_class: {initial: 14, modifier: "dexterity", max: 2},
          strength: "",
          stealth: "Disadvantage",
          weight: 45
          },
        breast_plate: {
          description: "This armor consists of a fitted metal chest piece worn with supple leather. Although it leaves the legs and arms relatively unprotected, this armor provides good protection for the wearer’s vital organs while leaving the wearer relatively unencumbered.",
          cost: "400 gp",
          armor_class: {initial: 14, modifier: "dexterity", max: 2},
          strength: "",
          stealth: "",
          weight: 20
          },
        half_plate: {
          description: "Half plate consists of shaped metal plates that cover most of the wearer’s body. It does not include leg protection beyond simple greaves that are attached with leather straps.",
          cost: "750 gp",
          armor_class: {initial: 14, modifier: "dexterity", max: 2},
          strength: "",
          stealth: "Disadvantage",
          weight: 40
        }
      },
    "Heavy Armor" => {
        ring_mail: {
          description: "This armor is leather armor with heavy rings sewn into it. The rings help reinforce the armor against blows from swords and axes. Ring mail is inferior to chain mail, and it’s usually worn only by those who can’t afford better armor.",
          cost: "30 gp",
          armor_class: {initial: 14, modifier: "", max: nil},
          strength: "",
          stealth: "Disadvantage",
          weight: 45
          },
        chain_mail: {
          description: "Made of interlocking metal rings, chain mail includes a layer of quilted fabric worn underneath the mail to prevent chafing and to cushion the impact of blows. The suit includes gauntlets.",
          cost: "75 gp",
          armor_class: {initial: 16, modifier: "", max: nil},
          strength: "Str 13",
          stealth: "Disadvantage",
          weight: 55
          },
        splint: {
          description: "This armor is made of narrow vertical strips of metal riveted to a backing of leather that is worn over cloth padding. Flexible chain mail protects the joints.",
          cost: "200 gp",
          armor_class: {initial: 17, modifier: "", max: nil},
          strength: "Str 15",
          stealth: "Disadvantage",
          weight: 60
          },
        plate: {
          description: "Plate consists of shaped, interlocking metal plates to cover the entire body. A suit of plate includes gauntlets, heavy leather boots, a visored helmet, and thick layers of padding underneath the armor. Buckles and straps distribute the weight over the body.",
          cost: "1500 gp",
          armor_class: {initial: 18, modifier: "", max: nil},
          strength: "Str 15",
          stealth: "Disadvantage",
          weight: 65

        }
      },
    "Shield" => {
          description: "",
          cost: "10 gp",
          armor_class: {initial: 2, modifier: "+", max: nil},
          strength: "",
          stealth: "",
          weight: 6
    }
  }

  def assemble_armor_types
    CHARACTER_CLASSES.keys
  end

  def assemble_armor_names(type)
    ARMOR.keys[type].names
  end



end
