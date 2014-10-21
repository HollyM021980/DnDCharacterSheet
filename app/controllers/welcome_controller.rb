class WelcomeController < ApplicationController
  before_action :authenticate_user!, except: [:show, :index, :license]

  def index
    @characters = Character.where("public_flag = ?", true)
  end

  def license
  end
end
