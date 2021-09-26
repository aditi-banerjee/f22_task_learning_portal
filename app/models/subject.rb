class Subject < ApplicationRecord
  #
  ## Associations
  #
  belongs_to :exam
  has_many :topics
  has_many :chapters, through: :topics
  has_many :questions, through: :chapters
end
