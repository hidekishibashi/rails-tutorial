# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'users/index' do
  before do
    assign(:users, [
             User.create!(
               name: 'Name',
               email: 'Email'
             ),
             User.create!(
               name: 'Name',
               email: 'Email'
             )
           ])
  end

  it 'renders a list of users' do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new('Name'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('Email'.to_s), count: 2
  end
end
