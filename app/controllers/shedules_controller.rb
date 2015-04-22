class ShedulesController < ApplicationController

  before_filter :authenticate_user!, except: [:show, :index]
  before_filter :find_user,          only:   [:index, :create, :update, :edit, :destroy, :show]

  def new
    @shedule = Shedule.new
  end

  def update

    if @shedule.update(shedule_params)
      redirect_to @shedule
    else
      render 'edit'
    end
  end

  def edit
  end

  def destroy

    @shedule.destroy

    redirect_to shedules_path
  end

  def index
    @shedules = @user.shedules
  end

  #def show
  #end

  def create

    @shedule = @user.shedules.create(shedule_params)

    if @shedule.save
      redirect_to @shedule
    else
      render 'new'
    end
  end

  private

    def find_user
      @user = User.where(id: current_user.id).first
      @shedule = @user.shedules.where(id: params[:id]).first
    end

    def shedule_params
      params.require(:shedule).permit(:type_shedule, :favorite_town_to, :favorite_town_from)
    end


end
