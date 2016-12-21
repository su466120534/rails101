class Group < ApplicationRecord
  has_many :posts

  has_many :group_relationships
  has_many :members, through: :group_relationships, source: :user

  belongs_to :user
  validates :title, presence: true
end
