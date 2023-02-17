require 'rails_helper'

RSpec.describe EntitiesController, type: :request do
  before(:each) do
    default_url_options[:host] = 'localhost:3000'
    @user = User.create(name: 'John Smith', email: 'john.smith1@gmail.com', password: 'password',
                        password_confirmation: 'password')

    @group = @user.groups.create(name: 'Fast Food', icon: 'food-icon.jpg')
    sign_in @user
  end
  describe 'GET /expenses' do
    it 'returns a success response' do
      get user_group_entities_path(@user, @group)
      expect(response).to be_successful
    end
  end

  describe 'GET /new' do
    it 'renders a successful response' do
      get new_user_group_entity_url(@user, @group)
      expect(response).to be_successful
    end
  end
end
