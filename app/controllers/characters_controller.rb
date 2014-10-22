class CharactersController < ApplicationController
  include DiceRoll

  before_action :set_character, only: [:edit, :show, :update ]

  def index
    @characters = Character.where("user_id = ?", current_user)
  end

  def show
    @ability_scores = []
    6.times { @ability_scores << DiceRoll.ability_dice_roll }
  end


  private
  def set_character
   @character = Character.find(params[:id])
  end

  def character_params
    params.require(:character).permit(:name, :age, :gender, :level, :user_id, :created_at, :public_flag, :category_id)
  end

end
