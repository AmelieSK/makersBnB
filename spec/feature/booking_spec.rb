require 'spec_helper'

feature 'Booking a space' do
  it 'confirms your booking' do
    visit '/book'
    fill_in(:date, with: '25/10/2020')
    click_button('book')
    expect(page).to have_content('Thank you for booking!')
  end
end
