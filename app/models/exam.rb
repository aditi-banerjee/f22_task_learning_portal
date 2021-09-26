class Exam < ApplicationRecord
  #
  ## Associations
  #
  has_many :subjects
  has_many :questions, through: :subjects
  
  #
  ## Validations
  #
  validates :exam_name, presence: true
end
