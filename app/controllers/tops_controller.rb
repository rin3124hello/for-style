class TopsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def index
    @user = User.all
  end
end