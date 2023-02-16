class Tag < ApplicationRecord
  has_many :project_tags
  has_many :projects, through: :project_tags

  validates_presence_of :name
  # tag must only have one instance of the same name
  validates :name, uniqueness: true
end
