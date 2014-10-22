# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.delete_all
Character.delete_all
CharacterClass.delete_all

u1 = User.create(email: "test2@test.com", password: "test1234")
u2 = User.create(email: "test3@test.com", password: "test1234")
u3 = User.create(email: "test4@test.com", password: "test1234")
u4 = User.create(email: "test5@test.com", password: "test1234")

c1 = Character.create(user_id: u1.id, race: "Dwarf", name: "Amber", age: 23, gender: "Female",public_flag: true, strength: 7, constitution: 4, dexterity: 10, intelligence: 14, wisdom: 12, charisma: 8)
c2 = Character.create(user_id: u1.id, race: "Elf", name: "Baern", age: 49, gender: "Male", public_flag: false, strength: 7, constitution: 4, dexterity: 10, intelligence: 14, wisdom: 12, charisma: 8)
c3 = Character.create(user_id: u1.id, race: "Human", name: "Fred", age: 15, gender: "Male", public_flag: true, strength: 7, constitution: 4, dexterity: 10, intelligence: 14, wisdom: 12, charisma: 8)
c4 = Character.create(user_id: u2.id, race: "Gnome", name: "Hugo", age: 5, gender: "Male", public_flag: true, strength: 7, constitution: 4, dexterity: 10, intelligence: 14, wisdom: 12, charisma: 8)
c5 = Character.create(user_id: u3.id, race: "Half-Elf", name: "Annalee", age: 31, gender: "Female", public_flag: false, strength: 7, constitution: 4, dexterity: 10, intelligence: 14, wisdom: 12, charisma: 8)
c6 = Character.create(user_id: u4.id, race: "Half-Orc", name: "Bea", age: 42, gender: "Female", public_flag: false, strength: 7, constitution: 4, dexterity: 10, intelligence: 14, wisdom: 12, charisma: 8)
c7 = Character.create(user_id: u4.id, race: "Halfling", name: "Shushu", age: 21, gender: "Male", public_flag: false, strength: 7, constitution: 4, dexterity: 10, intelligence: 14, wisdom: 12, charisma: 8)

cclass11 = CharacterClass.create(character_id: c1.id, class_name: "Cleric", level: 1)
cclass12 = CharacterClass.create(character_id: c1.id, class_name: "Fighter", level: 2)
cclass21 = CharacterClass.create(character_id: c2.id, class_name: "Fighter", level: 1)
cclass22 = CharacterClass.create(character_id: c2.id, class_name: "Cleric", level: 2)
cclass31 = CharacterClass.create(character_id: c3.id, class_name: "Wizard", level: 1)
cclass32 = CharacterClass.create(character_id: c3.id, class_name: "Rogue", level: 2)
cclass41 = CharacterClass.create(character_id: c4.id, class_name: "Rogue", level: 1)
cclass42 = CharacterClass.create(character_id: c4.id, class_name: "Wizard", level: 2)
cclass51 = CharacterClass.create(character_id: c5.id, class_name: "Bard", level: 1)
cclass61 = CharacterClass.create(character_id: c6.id, class_name: "Barbarian", level: 1)
