feature 'Viewing index' do
  scenario 'visiting the index page' do
    visit('/')
    expect(page).to have_content "MakersBnB"
  end
end
