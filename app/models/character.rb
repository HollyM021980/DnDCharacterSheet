class Character < ActiveRecord::Base
  belongs_to :user
  has_one :character_race

  validates :user_id, presence: true
end

