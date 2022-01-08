class UsersController < ApplicationController
  # skip_before_action :require_login, only:[:new, :create]
  def index

    @projecta = Project.all

  end

  def show
    # @projecta = Project.all
    # @project_id = params[:id]
    # @projecta = (@project_id)
      @projecta = Project.find(params[:id])
  end
  def new
    @user=User.new
  end

  def projectlist

  end

  def test
  end

  def create
@user= User.new(user_params)
    if @user.save
    session[:user_id]=@user.id
    redirect_to root_path

  else
    render :new
  end

  

  def destroy
    @projecta = Project.find(params[:id])
    @projecta.destroy

    redirect_to root_path
    end
end


private
   def user_params
    params.require(:user).permit(:username, :password, :email, :usertype)
end
end