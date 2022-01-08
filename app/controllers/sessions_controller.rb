class SessionsController < ApplicationController
  def login
  end

  def index
    render('login')

  end

  # def new
  #   @user=User.new
  # end

  def create  
    
      @user = User.find_by(email: params[:email])
      
      if !!@user && @user.authenticate(params[:password])
      session[:user_id]=@user.id
      # redirect_to users_path
      puts "create action called"
      # redirect_to project
      redirect_to(:controller => 'users', :action => 'index')
      else 
      message= "Somerhing went wrong:"
      # redirect_to login_path, notice: message
    end
  end
   # def destroy
   #      session.clear
   #      redirect_to login_path
   #  end


end
