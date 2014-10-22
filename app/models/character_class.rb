class CharacterClass < ActiveRecord::Base
  belongs_to :character

  validates :class_name, presence: true
  validates :level, uniqueness: { scope: :class_name,
    message: "can only have one class & level pair - choose another level or class" }
end
