class Character < ActiveRecord::Base
  belongs_to :user
  has_many :character_classes, dependent: :destroy

  validates :user_id, presence: true
end

