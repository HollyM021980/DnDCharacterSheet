class CharactersController < ApplicationController
  before_action :set_character, only: [ :edit, :show, :update ]

  def index
    @characters = Character.all
  end


  private
  def set_character
   @character = Character.find(params[:id])
  end

  def character_params
    params.require(:character).permit(:name, :age, :gender, :level, :user_id, :created_at, :author_id, :category_id)
  end

end
