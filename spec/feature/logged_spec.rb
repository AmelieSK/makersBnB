require 'spec_helper'

feature 'Logged' do
  scenario 'clicks the add button' do
    visit('/logged')
    click_button('add')
    expect(page.current_path).to eq('/add')
  end

  scenario 'clicks the add button' do
    visit('/logged')
    click_button('list')
    expect(page.current_path).to eq('/list')
  end
end
