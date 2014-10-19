class Weapons

  WEAPONS = {
    "Simple Melee Weapons" => {
      club: {
        cost: "1 sp",
        damage: { dice: "1d4", type: "bludgeoning" },
        weight: 2,
        properties: ["Light"]
        },
      dagger: {
        cost: "2 gp",
        damage: { dice: "1d8", type: "bludgeoning" },
        weight: 1,
        properties: ["Finesse", "Light", "Thrown", "Range 20/60"]
        },
      greatclub: {
        cost: "2 sp",
        damage: { dice: "1d8", type: "bludgeoning" },
        weight: 10,
        properties: ["Two-handed"]
        },
      handaxe: {
        cost: "5 gp",
        damage: { dice: "1d6", type: "slashing" },
        weight: 2,
        properties: ["Light", "Thrown", "Range 20/60"]
        },
      handaxe: {
        cost: "5 gp",
        damage: { dice: "1d6", type: "slashing" },
        weight: 2,
        properties: ["Light", "Thrown", "Range 20/60"]
        },
      javelin: {
        cost: "5 sp",
        damage: { dice: "1d6", type: "piercing" },
        weight: 2,
        properties: ["Thrown", "Range 30/120"]
        },
      light_hammer: {
        cost: "2 gp",
        damage: { dice: "1d4", type: "bludgeoning" },
        weight: 2,
        properties: ["Thrown", "Range 20/60"]
        },
      mace: {
        cost: "5 gp",
        damage: { dice: "1d6", type: "bludgeoning" },
        weight: 4,
        properties: []
        },
      quarterstaff: {
        cost: "2 sp",
        damage: { dice: "1d6", type: "bludgeoning" },
        weight: 2,
        properties: ["Versitile (1d8)"]
        },
      sickle: {
        cost: "1 gp",
        damage: { dice: "1d4", type: "slashing" },
        weight: 2,
        properties: ["Light"]
        },
      spear: {
        cost: "1 gp",
        damage: { dice: "1d6", type: "piercing" },
        weight: 3,
        properties: ["Thrown", "Range 20/60", "Versitile (1d8)"]
        }
      },
    "Simple Ranged Weapons" => {
      light_crossbow: {
        cost: "25 gp",
        damage: { dice: "1d8", type: "piercing" },
        weight: 5,
        properties: ["Ammunition", "Range 80/320", "Loading", "Two-handed"]
        },
      dart: {
        cost: "5 cp",
        damage: { dice: "1d4", type: "piercing" },
        weight: 0.25,
        properties: ["Finesse", "Thrown", "Range 20/60"]
        },
      shortbow: {
        cost: "25 gp",
        damage: { dice: "1d6", type: "piercing" },
        weight: 2,
        properties: ["Ammunition", "Two-handed"]
        },
      sling: {
        cost: "1 sp",
        damage: { dice: "1d4", type: "bludgeoning" },
        weight: 3,
        properties: ["Ammunition", "Range 30/120", "Versitile (1d8)"]
        },
      },
    "Martial Melee Weapons" => {},
    "Martial Ranged Weapons" => {},
  }

  def assemble_weapon_types
    WEAPONS.keys
  end

  def assemble_weapon_names(type)
    WEAPONS[type].keys.to_s
  end

end
