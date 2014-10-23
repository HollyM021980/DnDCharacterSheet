class CharacterClassesController < ApplicationController
  before_action character_class_params, only: [:show, :edit, :update, :destroy]

  def create
    @character_classes = CharacterClasses.create(character_class_params)
    # redirect_to library_path(@character_classes.library)
  end

  def new
    @character_classes = CharacterClasses.new(character_id: params[:character_id])
  end

  def update
    respond_to do |format|
      if @character_classes.update(character_class_params)
        format.html { redirect_to character_path(params(:character_id)), notice: 'Character Class was successfully updated.' }
        format.json { render :show, status: :ok, location: @character_classes }
      else
        format.html { characters_path }
        format.json { render json: @character_classes.errors, status: :unprocessable_entity }
      end
    end
    redirect_to character_path(params(:character_id))
  end

  def destroy
    CharacterClasses.find(params[:id]).destroy
    character_path(params(:character_id))
  end

  private
  def character_class_params
    params.require(:character_class).permit(:class_name, :level, :character_id)
  end

end
