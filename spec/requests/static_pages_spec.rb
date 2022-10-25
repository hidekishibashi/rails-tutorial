# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'StaticPages' do
  let(:common_title) { 'Ruby on Rails Tutorial Sample App' }

  describe 'GET /home' do
    it 'returns http success' do
      get static_pages_home_url
      expect(response).to have_http_status(:success)
      assert_select 'title', "Home | #{common_title}"
    end
  end

  describe 'GET /help' do
    it 'returns http success' do
      get static_pages_help_url
      expect(response).to have_http_status(:success)
      assert_select 'title', "Help | #{common_title}"
    end
  end

  describe 'GET /about' do
    it 'returns http success' do
      get static_pages_about_url
      expect(response).to have_http_status(:success)
      assert_select 'title', "About | #{common_title}"
    end
  end
end
