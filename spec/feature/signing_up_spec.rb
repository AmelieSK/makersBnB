require 'spec_helper'

feature 'Signing up' do
  it 'displays the form to sign in' do
    visit('/')
    click_button('Sign Up')
    fill_in(:email, with: 'smth@gmail.com')
    fill_in(:password, with: 'password')
    click_button('Submit')
    expect(page.current_path).to eq('/signin')
    expect(page).to have_content 'SUccessFUL! SIGn In To LIST A SPACE'
  end
end
