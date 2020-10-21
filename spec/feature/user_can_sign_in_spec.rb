feature 'Sessions' do
  before do
    user = User.new(email:'smth@gmail.com')
    user.password = ('password')
    user.save
  end

  scenario 'user can sign in' do
    visit('/signin')
    fill_in(:email, with: 'smth@gmail.com')
    fill_in(:password, with: 'password')
    click_button('Sign In')
    expect(page.current_path).to eq('/add')
    expect(page).to have_content 'Welcome! Add a space'
  end

  scenario 'wrong email' do
    visit('/signin')
    fill_in(:email, with: 'incorrect@gmail.com')
    fill_in(:password, with: 'password')
    click_button('Sign In')
    expect(page.current_path).to eq('/signin')
  end

  scenario 'wrong password' do
    visit('/signin')
    fill_in(:email, with: 'smth@gmail.com')
    fill_in(:password, with: 'wrong')
    click_button('Sign In')
    expect(page.current_path).to eq('/signin')
  end

end
