require 'rails_helper'

RSpec.describe ExamsController, type: :controller do
  include_context "session setup"

  it "Lists of questions" do
    get '/list-of-questions', params: {}, headers: request_headers(bearer_token)

    questions = JSON.parse(response.body)
    puts "======================="
    puts questions
    puts "======================="
    expect(response.status).to eq 200
  end

  
end
