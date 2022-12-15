class UsersController < ApplicationController
  before_action :set_vars, only: %i[show index]

  def index; end

  def show; end

  private

  def set_vars
    @user = current_user
    @users = User.all.order(created_at: :asc)
  end
end
