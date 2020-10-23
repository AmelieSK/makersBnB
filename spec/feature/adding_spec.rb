require 'spec_helper'

feature 'Adding a space' do
  it 'displays the space' do
    visit '/add'
    fill_in(:name, with: 'Oasis')
    fill_in(:description, with: 'Relaxing and affordable accomodation with views of the city')
    fill_in(:price, with: '70')
    click_button('Add')
    expect(current_path).to eq '/list'
  end
end
