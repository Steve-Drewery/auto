require 'rails_helper'

RSpec.describe "Statics", type: :request do
  describe "GET /pricing" do
    it "returns http success" do
      get "/static/pricing"
      expect(response).to have_http_status(:success)
    end
  end

end
