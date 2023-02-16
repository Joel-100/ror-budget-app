require 'rails_helper'

RSpec.describe GroupsController, type: :request do
  before(:each) do
    default_url_options[:host] = 'localhost:3000'
    @user = User.create(name: 'John Smith', email: 'john.smith1@gmail.com', password: 'password',
                        password_confirmation: 'password')
    sign_in @user
  end
  describe 'GET /groups' do
    it 'returns a success response' do
      get user_groups_path(@user)
      expect(response).to be_successful
    end
  end

  describe 'GET /new' do
    it 'renders a successful response' do
      get new_user_group_url(@user)
      expect(response).to be_successful
    end
  end
end
