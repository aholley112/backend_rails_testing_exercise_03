require 'rails_helper'

RSpec.describe "Posts", type: :request do
  describe "GET /posts" do
    before do
      create_list(:post, 3)
      get '/posts'
    end
    it "returns all posts" do
      expect(response).to have_http_status(200)
      expect(JSON.parse(response.body).size).to eq(3)
    end
  end
end
