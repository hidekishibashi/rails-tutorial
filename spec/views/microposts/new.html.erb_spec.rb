require 'rails_helper'

RSpec.describe 'microposts/new', type: :view do
  let!(:user) { FactoryBot.create(:user) }
  before(:each) do
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
