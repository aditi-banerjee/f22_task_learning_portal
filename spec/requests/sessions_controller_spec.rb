require 'rails_helper'

RSpec.describe "Sessions", type: :request do

  include_context "session setup"

  describe "POST /sessions" do

    it "returns a 200 status" do
      post "/sessions", params: user_credentials, headers: request_headers
      expect(response.status).to eq 200
    end

    it "returns a 401 status for an incorrect login" do
      post '/sessions', params: user_credentials('wrong'), headers: request_headers
      expect(response).to have_http_status(401)
    end

    it "returns a Bearer token on a successful login" do
      post '/sessions', params: user_credentials, headers: request_headers
      expect(response.headers).to  have_key("Bearer")
    end

  end

end