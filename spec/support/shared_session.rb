require 'rails_helper'

puts "Loading shared_context : session setup...."
shared_context 'session setup' do

  before(:each) do
    # create a new user
    @current_user = FactoryBot.build(:user)
    @current_user.save
  end

  let(:bearer_token) {
    post '/sessions', params: user_credentials, headers: request_headers
    response.headers["Bearer"]
  }

end