class Question < ApplicationRecord
  #
  ## Associations
  #
  belongs_to :chapter
  has_many :mcq_options
  has_many :user_results

  #
  ## Validations
  #
  validates :question, :category, presence: true

  #
  ## Enum
  #
  enum category: [:easy, :medium, :hard]

end
