class ShedulesController < ApplicationController

  def new
    @shedule = Shedule.new
  end

  def update

    @shedule = Shedule.find(params[:id])

    if @shedule.update(shedule_params)
      redirect_to @shedule
    else
      render 'edit'
    end
  end

  def edit
    @shedule = Shedule.find(params[:id])
  end

  def destroy
    @shedule = Shedule.find(params[:id])
    @shedule.destroy

    redirect_to shedules_path
  end

  def index
    @shedules = Shedule.where(user_id: current_user.id)
  end

  def show
    @shedule = Shedule.find(params[:id])
  end

  def create

    @shedule = Shedule.new(shedule_params)

    @shedule.update_attribute(:user_id, current_user.id)


    if @shedule.save
      redirect_to @shedule
    else
      render 'new'
    end
  end

  private

  def shedule_params
    params.require(:shedule).permit(:type_shedule, :user_id, :favorite_town_to, :favorite_town_from)
  end
end
