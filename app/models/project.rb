class Project < ApplicationRecord
  has_many :links
  has_many :project_tags, dependent: :destroy
  has_many :tags, through: :project_tags
end
