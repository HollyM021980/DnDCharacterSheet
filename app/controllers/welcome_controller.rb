class WelcomeController < ApplicationController
  before_action :authenticate_user!, except: [:show, :index, :license]

  def index
  end

  def license
  end
end
