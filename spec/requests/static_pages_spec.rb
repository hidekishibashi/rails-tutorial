# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'StaticPages' do
  describe 'GET /home' do
    it 'returns http success' do
      get '/static_pages/home'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /help' do
    it 'returns http success' do
      get '/static_pages/help'
      expect(response).to have_http_status(:success)
    end
  end
end
