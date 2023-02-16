class Project < ApplicationRecord
  has_many :links, dependent: :destroy
  has_many :project_tags, dependent: :destroy
  has_many :tags, through: :project_tags
end
