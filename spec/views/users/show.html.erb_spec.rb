# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'users/show' do
  before do
    assign(:user, User.create!(
                    name: 'Name',
                    email: 'Email'
                  ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Email/)
  end
end
