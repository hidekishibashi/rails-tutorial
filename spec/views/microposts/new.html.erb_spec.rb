# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'microposts/new' do
  let!(:user) { create(:user) }

  before do
    assign(:micropost, Micropost.new(
                         content: 'MyText',
                         user_id: user.id
                       ))
  end

  it 'renders new micropost form' do
    render

    assert_select 'form[action=?][method=?]', microposts_path, 'post' do
      assert_select 'textarea[name=?]', 'micropost[content]'

      assert_select 'input[name=?]', 'micropost[user_id]'
    end
  end
end
