class EntitiesController < ApplicationController
  before_action :authenticate_user!

  def index
    @group = Group.includes(:group_entities).find(params[:group_id])
  end

  def new
    @group = Group.find(params[:group_id])
    @entity = Entity.new
  end

  def create
    @entity = Entity.new(entity_params)
    @entity.author = current_user
    @group = Group.find(params[:group_id])

    respond_to do |format|
      if @entity.save
        GroupEntity.create(group: @group, entity: @entity)
        format.html do
          redirect_to user_group_entities_path(current_user, @group), notice: 'Transaction was successfully created.'
        end
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  private

  def entity_params
    params.require(:entity).permit(:name, :amount)
  end
end
