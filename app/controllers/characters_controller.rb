class CharactersController < ApplicationController
  include DiceRoll

  before_action :set_character, only: [:edit, :show, :update ]

  def index
    @characters = Character.where("user_id = ?", current_user)
  end

  def show
    @ability_scores = roll_for_ability_scores
  end

  def create
    @character = Character.new(character_params)
    @character.user = current_user

    respond_to do |format|
      if @character.save
        format.html { redirect_to @character, notice: 'Character was successfully created.' }
        format.json { respond_with_bip(@character) }
      else
        format.html { render :show }
        format.json { respond_with_bip(@character) }
      end
    end
  end

  def update
    respond_to do |format|
      if @character.update(character_params)
        format.html { redirect_to @character, notice: 'Character was successfully updated.' }
        format.json { respond_with_bip(@character) }
      else
        format.html { render :show }
        format.json { respond_with_bip(@character) }
      end
    end
  end

  def destroy
    @character.destroy
    respond_to do |format|
      format.html { redirect_to characters_url, notice: 'Character was successfully destroyed.' }
    end
  end


  private
  def set_character
    @character = Character.find(params[:id])
  end

  def character_params
    params.require(:character).permit(:name, :age, :gender, :level, :user_id, :strength, :wisdom, :charisma, :dexterity, :constitution, :intelligence, :created_at, :public_flag, :category_id)
  end

  def roll_for_ability_scores
    res = []
    6.times { res << DiceRoll.ability_dice_roll }
    res
  end

end
