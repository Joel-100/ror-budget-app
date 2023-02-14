class Entity < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :group_entities, dependent: :destroy
  has_many :groups, through: :group_entities

  validates :name, presence: true
  validates :amount, presence: true
end
