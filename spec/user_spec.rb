require './app/models/user'

describe User do
  describe 'authenticate' do
    before do
      user = User.new(email: 'smth@gmail.com')
      user.password = 'password'
      user.save!
    end
    it 'returns user when valid' do
      user = described_class.authenticate(email: 'smth@gmail.com', password: 'password')
      expect(user).not_to eq nil
    end

    it 'returns nil when email invalid' do
      user = described_class.authenticate(email: 'incorrect@gmail.com', password: 'password')
      expect(user).to eq nil
    end

    it 'returns nil when password invalid' do
      user = described_class.authenticate(email: 'smth@gmail.com', password: 'wrong')
      expect(user).to eq nil
    end
  end
end