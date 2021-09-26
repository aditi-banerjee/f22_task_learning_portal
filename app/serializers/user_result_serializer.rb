class UserResultSerializer < ActiveModel::Serializer
  attributes :id, :is_skipped

  belongs_to :question
  belongs_to :mcq_option
end
