class HomeController < ApplicationController
  def new
  end

  def index
    @user = current_user
  end

  def create
  end
end
