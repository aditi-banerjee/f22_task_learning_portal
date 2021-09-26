class ExamsController < ApplicationController
  before_action :authenticate!

  def list_of_questions
    @remaining_questions = AttemptTest.remaining_questions(@current_user)
    if @remaining_questions.present?
      render json: @remaining_questions, status: 200
    else
      render json: { errors: "All the questions are attempted" }, status: 404
    end
  end

end