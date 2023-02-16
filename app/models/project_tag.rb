class ProjectTag < ApplicationRecord
  belongs_to :tag
  belongs_to :project

  # Project can't have duplicate tags
  validates :project_id, uniqueness: { scope: :tag_id }
end
