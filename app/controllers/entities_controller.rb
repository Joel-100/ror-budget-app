class EntitiesController < ApplicationController
  before_action :authenticate_user!

  def index
    @group = Group.includes(:group_entities).find(params[:group_id])
  end
end
