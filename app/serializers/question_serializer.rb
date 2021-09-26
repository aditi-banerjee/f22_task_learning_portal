class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :question
  
  has_many :mcq_options, serializer: McqOptionSerializer
end
