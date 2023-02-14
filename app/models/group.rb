class Group < ApplicationRecord
  belongs_to :author, class_name: "User"
  has_many :group_entities, dependent: :destroy
  has_many :entities, through: :group_entities
  
  validates :name, presence: true
  validates :icon, presence: true
end
