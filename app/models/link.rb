class Link < ApplicationRecord
  belongs_to :project

  # A link must begin with 'http(s)://' to be considered valid
  validates :url, format: { with: %r{\Ahttps?://}, message: 'must begin with "http(s)://"' }

  validates_presence_of :source
end
