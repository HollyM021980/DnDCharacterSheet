# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.delete_all
Character.delete_all

u1 = User.create(email: "test2@test.com", password: "test1234")
u2 = User.create(email: "test3@test.com", password: "test1234")
u3 = User.create(email: "test4@test.com", password: "test1234")
u4 = User.create(email: "test5@test.com", password: "test1234")

c1 = Character.create(user_id: u1.id, name: "Amber", age: 23, gender: "Female", level: 1, public: true, strength: 7, constitution: 4, dexterity: 10, intelligence: 14, wisdom: 12, charisma: 8)
c2 = Character.create(user_id: u1.id, name: "Baern", age: 49, gender: "Male", level: 1, public: false, strength: 7, constitution: 4, dexterity: 10, intelligence: 14, wisdom: 12, charisma: 8)
c3 = Character.create(user_id: u1.id, name: "Fred", age: 15, gender: "Male", level: 1, public: true, strength: 7, constitution: 4, dexterity: 10, intelligence: 14, wisdom: 12, charisma: 8)
c4 = Character.create(user_id: u2.id, name: "Hugo", age: 5, gender: "Male", level: 1, public: true, strength: 7, constitution: 4, dexterity: 10, intelligence: 14, wisdom: 12, charisma: 8)
c5 = Character.create(user_id: u3.id, name: "Annalee", age: 31, gender: "Female", level: 1, public: false, strength: 7, constitution: 4, dexterity: 10, intelligence: 14, wisdom: 12, charisma: 8)
c6 = Character.create(user_id: u4.id, name: "Bea", age: 42, gender: "Female", level: 1, public: false, strength: 7, constitution: 4, dexterity: 10, intelligence: 14, wisdom: 12, charisma: 8)
