require 'spec_helper'

feature 'Viewing index' do
  it 'displays the index page' do
    visit('/')
    expect(page).to have_content 'MAKERsBNB'
  end
end
