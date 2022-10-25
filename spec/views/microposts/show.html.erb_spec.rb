require 'rails_helper'

RSpec.describe 'microposts/show', type: :view do
  let!(:user) { FactoryBot.create(:user) }
  before(:each) do
    assign(:micropost, Micropost.create!(
                         content: 'MyText',
                         user_id: user.id
                       ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/#{user.id}/)
  end
end
