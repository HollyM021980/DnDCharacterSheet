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

c1 = Character.create(name: "Amber", age: 23, gender: "Female", level: 1, public: true)
c2 = Character.create(name: "Baern", age: 49, gender: "Male", level: 1, public: false)
c3 = Character.create(name: "Fred", age: 15, gender: "Male", level: 1, public: true)
c4 = Character.create(name: "Hugo", age: 5, gender: "Male", level: 1, public: true)
c5 = Character.create(name: "Annalee", age: 31, gender: "Female", level: 1, public: false)
