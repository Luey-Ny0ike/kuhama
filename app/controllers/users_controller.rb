class UsersController < ApplicationController
  before_action :correct_user, only: [:edit, :update]
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @listings = @user.listings.all
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to user_path(@user.id)
    else
      render 'edit'
    end
  end

  private

    def correct_user
      # .to_i converts values to integers here because params[:id] is a string
      # Without this current_user.id and params[:id] would never match
      if current_user.id != params[:id].to_i
        redirect_to root_url
      end
    end

    def user_params
      params.require(:user).permit(:first_name, :last_name, :avatar, :email, :number, :website, :notes, :facebook, :instagram, :twitter)
    end
end
