class Chapter < ApplicationRecord
  #
  ##Associations
  #
  belongs_to :topic
  has_many :questions
end
