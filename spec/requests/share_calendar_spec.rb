require 'rails_helper'

RSpec.describe "ShareCalendars", type: :request do
  describe "GET /new" do
    it "returns http success" do
      get "/share_calendar/new"
      expect(response).to have_http_status(:success)
    end
  end

end
