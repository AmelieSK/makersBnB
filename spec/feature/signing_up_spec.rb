require 'spec_helper'

feature 'Signing up' do
  it 'displays the form to sign in' do
    visit('/')
    click_button('sign up')
    fill_in(:email, with: 'test@gmail.com')
    fill_in(:password, with: 'password')
    click_button('submit')
    expect(page.current_path).to eq('/signin')
  end
end
