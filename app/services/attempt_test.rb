require 'open-uri'

module AttemptTest
  def self.list_of_questions(user)
    if user.user_results.present?
      attempted_questions = user.user_results.pluck(:question_id)
      skipped_questions = user.user_results.where(is_skipped: true).pluck(:question_id)
      questions = Question.where.not(id: attempted_questions)
      if questions.count > 0
        @remaining_questions = questions.order("RANDOM()").limit(5)
      else
        @remaining_questions = Question.where(id: skipped_questions).order("RANDOM()").limit(5)
      end
    else
      @remaining_questions = Question.order("RANDOM()").limit(5)
    end
    return @remaining_questions
  end

  def self.result_calculation(current_user)
    total_question = Question.count
    attempted_questions = current_user.user_results.where(is_skipped: false)
    correct_answers = attempted_questions.includes(:mcq_option).where(mcq_options: {is_correct: true}).count
    worng_answers = attempted_questions.includes(:mcq_option).where(mcq_options: {is_correct: false}).count
    skipped_questions = current_user.user_results.where(is_skipped: true).count
    answered_questions = current_user.user_results.pluck(:question_id)
    unsee_questions = Question.where.not(id: answered_questions).count

    final_result = {
      "correct_answers" => "#{AttemptTest.calculate(total_question,correct_answers)} %",
      "worng_answers" => "#{AttemptTest.calculate(total_question,worng_answers)} %",
      "sikked_questions" => "#{AttemptTest.calculate(total_question,skipped_questions)} %",
      "unsee_questions" => "#{AttemptTest.calculate(total_question,unsee_questions)} %"
    }

    return final_result
  end

  private 
  def self.calculate(total_question, question_count)
    result = ((question_count*100)/total_question).to_f
  end
end