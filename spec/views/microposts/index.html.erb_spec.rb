require 'rails_helper'

RSpec.describe 'microposts/index', type: :view do
  let!(:user) { FactoryBot.create(:user) }
  before(:each) do
    assign(:microposts, [
             Micropost.create!(
               content: 'MyText',
               user_id: user.id
             ),
             Micropost.create!(
               content: 'MyText',
               user_id: user.id
             )
           ])
  end

  it 'renders a list of microposts' do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new('MyText'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(user.id.to_s), count: 2
  end
end
