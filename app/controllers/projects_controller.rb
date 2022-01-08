class ProjectsController < ApplicationController
  
def index

    @project= Project.new

  end
  def create
     @user= User.find(params[:project][:user_id])
     puts @user
  	@project = Project.new(project_params)

    if @project.save
      redirect_to users_path
    else
      render :new

      # redirect_to root_path
    end
  end
  def show
   @projecta = Project.find(params[:id]) 
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])

    if @project.update(project_params)
      redirect_to @project
      # render('users/index')
    else
      render :edit, status: :unprocessable_entity
    end
  end

   def destroy
    @projecta = Project.find(params[:id])
    @projecta.destroy

    redirect_to users_path
    end

  private
    def project_params
      params.require(:project).permit(:title, :description, :user_id )
    end

  end

