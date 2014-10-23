class Character < ActiveRecord::Base
  belongs_to :user
  has_many :character_classes, dependent: :destroy
  accepts_nested_attributes_for :character_classes, :reject_if => :all_blank, :allow_destroy => true

  validates :user_id, presence: true
end

