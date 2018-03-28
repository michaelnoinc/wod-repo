class CharactersController < ApplicationController
  before_action :set_character, only: [:edit, :update, :show, :destroy]
  
  def show
  end
  
  def new
    @character = Character.new
  end
  
  def create
    @character = Character.new(character_params)
    @character.user = current_user
    if(@character.save)
      flash[:success] = "Character was successfully created"
      #redirect_to article_path(@article)
    else
      #render 'new'
    end
  end
  
  private
    def set_character
      @character = Character.find(params[:id])
    end
  
    def character_params
      params.require(:character).permit!
    end
  
end
