class UsersController < ApplicationController
  load_and_authorize_resource

  def index
    authorize! :index, @user, :message => 'Not authorized as an administrator.'
    @users = User.all
  end

  def dashboard
    params[:id] ||= current_user.id
    @user = User.find(params[:id])
    @course = @user.course
    @calendar_entries = @course.calendar_entries.limit(6) if @course
    @assignments = @course.assignments.order("due_date DESC").limit(6) if @course
    @tasks = @user.final_completed_tasks
#    @tasks = @user.tasks.order("created_at DESC").limit(10)
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def gradeview
    @user = User.find(params[:id])
  end
  
  def update
    authorize! :update, @user, :message => 'Not authorized as an administrator.'
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user], :without_protection => true)
      redirect_to users_path, :notice => "User updated."
    else
      redirect_to users_path, :alert => "Unable to update user."
    end
  end
    
  def destroy
    authorize! :destroy, @user, :message => 'Not authorized as an administrator.'
    user = User.find(params[:id])
    unless user == current_user
      user.destroy
      redirect_to users_path, :notice => "User deleted."
    else
      redirect_to users_path, :notice => "Can't delete yourself."
    end
  end
end
