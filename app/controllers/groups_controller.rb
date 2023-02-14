class GroupsController < ApplicationController
  before_action :authenticate_user!

  def index
    @groups = current_user.groups
  end


end
