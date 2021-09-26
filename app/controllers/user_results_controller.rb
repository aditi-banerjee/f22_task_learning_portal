class UserResultsController < ApplicationController
  before_action :authenticate!
  
  def create
    @user_result = @current_user.user_results.new(user_result_params)
    if @user_result.save!
      render json: @user_result, status: 200
    else
      render json: { errors: @user_result.errors.full_messages }, status: 404
    end
  end

  def total_percentage
    @result = AttemptTest.result_calculation(@current_user)
    if @result.present?
      render json: @result, status: 200
    else
      render json: { errors: "No result Found" }, status: 404
    end
  end

  private

  def user_result_params
    params.permit(:question_id, :mcq_option_id, :is_skipped)
  end
end