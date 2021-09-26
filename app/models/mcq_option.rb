class McqOption < ApplicationRecord
  #
  ## Associations
  #
  belongs_to :question

  #
  ## Validations
  #
  validates :option, presence: true
end
