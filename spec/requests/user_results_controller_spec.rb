require 'rails_helper'

RSpec.describe UserResultsController, type: :controller do
  include_context "session setup"

  it "Submit correct answer" do
    question = Question.order("RANDOM()").first
    temp = {
      :question_id => question.id,
      :mcq_option_id => question.mcq_options.find_by(is_correct: true).id
    }
    post "/submit_answer", params: temp.to_json, headers: request_headers(bearer_token)

    questions = JSON.parse(response.body)
    expect(response.status).to eq 200
  end

  it "Submit incorrect answer" do
    question = Question.order("RANDOM()").first
    temp = {
      :question_id => question.id,
      :mcq_option_id => question.mcq_options.find_by(is_correct: false).id
    }
    post "/submit_answer", params: temp.to_json, headers: request_headers(bearer_token)


    questions = JSON.parse(response.body)
    expect(response.status).to eq 200
  end

  it "Skip Question" do
    question = Question.order("RANDOM()").first
    temp = {
      :question_id => question.id,
      :is_skipped => true
    }
    post "/submit_answer", params: temp.to_json, headers: request_headers(bearer_token)


    questions = JSON.parse(response.body)
    expect(response.status).to eq 200
  end

  it "Calculate result" do
    get '/final_result', params: {}, headers: request_headers(bearer_token)

    questions = JSON.parse(response.body)
    puts "======================="
    puts questions
    puts "======================="
    expect(response.status).to eq 200
  end
  
end