class CharactersController < ApplicationController
  def index
    @characters = Character.all
  end


  #show
  def show
    @character = Character.find(params[:id])
  end

  def new
    redirect_to root_path
    @hcharacter = Character.new
  end

  def update
    @character = Character.find(params[:id])
    @character.update(house_params)
    redirect_to houses_path(@character)
  end

  def create
    redirect_to root_path(@character)
    @character = Character.create!(house_params)
  end

  def edit
    @character = Character.find(params[:id])
  end

  def destroy
    redirect_to root_path
    @character = Character.find(params[:id])
    @character.destroy
    redirect_to houses_path
  end

    private

    def house_params
      params.require(:character).permit(:name)
    end

end
