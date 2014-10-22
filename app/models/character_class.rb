class CharacterClass < ActiveRecord::Base
  belongs_to :character

  validates :class_name, presence: true

end
