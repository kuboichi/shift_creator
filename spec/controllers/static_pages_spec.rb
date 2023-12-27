require 'rails_helper'

RSpec.describe 'Root URL', type: :request do
    it 'get root path' do
      get root_url
      expect(response).to have_http_status(:ok)
    end
  end