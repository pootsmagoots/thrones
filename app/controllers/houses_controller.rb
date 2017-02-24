class HousesController < ApplicationController

  def index
    @houses = House.all
  end

  def show
    @house = House.find(params[:id])
  end

  def new
    redirect_to root_path
    @house = House.new
  end

  def update
    @house = House.find(params[:id])
    @house.update(house_params)
    redirect_to houses_path(@house)
  end
  
  def create
    redirect_to root_path(@house)
    @house = House.create!(house_params)
  end

  def edit
    @house = House.find(params[:id])
  end

  def destroy
    redirect_to root_path
    @house = House.find(params[:id])
    @house.destroy
    redirect_to houses_path
  end

    private

    def house_params
      params.require(:house).permit(:name)
    end

end
