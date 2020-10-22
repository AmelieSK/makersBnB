require 'spec_helper'

feature 'Logged' do
  scenario 'clicks the add button' do
    visit('/logged')
    click_button('Add')
    expect(page.current_path).to eq('/add')
  end

  scenario 'clicks the add button' do
    visit('/logged')
    click_button('List')
    expect(page.current_path).to eq('/list')
  end

end
