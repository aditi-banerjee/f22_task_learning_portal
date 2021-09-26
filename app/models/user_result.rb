class UserResult < ApplicationRecord
  #
  ## Associations
  #
  belongs_to :question
  belongs_to :user
  belongs_to :mcq_option, optional: true
end
