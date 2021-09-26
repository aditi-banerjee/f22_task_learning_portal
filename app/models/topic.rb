class Topic < ApplicationRecord
  #
  ## Associations
  #
  belongs_to :subject
  has_many :chapters
  has_many :questions, through: :chapters
end
