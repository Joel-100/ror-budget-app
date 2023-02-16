require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it 'is valid with valid attributes' do
      user = User.new(
        name: 'Jane Doe',
        email: 'jdoe@example.com',
        password: 'password'
      )
      expect(user).to be_valid
    end

    it 'is not valid without a name' do
      user = User.new(
        email: 'jdoe@example.com',
        password: 'password'
      )
      expect(user).to_not be_valid
    end

    it 'is not valid without a email' do
      user = User.new(
        name: 'John Doe',
        password: 'password'
      )
      expect(user).to_not be_valid
    end

    it 'is not valid without a password' do
      user = User.new(
        name: 'John Doe',
        email: 'john.doe@example.com'
      )
      expect(user).to_not be_valid
    end
  end
end
