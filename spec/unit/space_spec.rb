require './app/models/space'

describe Space do
  it 'adds a new space' do
    space = Space.create(name: 'Oasis', description: 'Relaxing accomodation with views of the city', price: '70')
    expect(space.name).to eq 'Oasis'
    expect(space.description).to eq 'Relaxing accomodation with views of the city'
    expect(space.price).to eq 70
  end
end

