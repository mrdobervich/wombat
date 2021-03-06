class CompletedTasksController < ApplicationController
  load_and_authorize_resource

  # GET /completed_tasks
  # GET /completed_tasks.json
  def index
    @completed_tasks = CompletedTask.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @completed_tasks }
    end
  end

  # GET /completed_tasks/1
  # GET /completed_tasks/1.json
  def show
    @completed_task = CompletedTask.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @completed_task }
    end
  end

  # GET /completed_tasks/new
  # GET /completed_tasks/new.json
  def new
    @completed_task = CompletedTask.new
    @user = current_user
    @task = Task.find(params[:task_id])

    old_solutions = @user.tasks.where(:id => @task.id)
    @revisions = old_solutions.size()

    @assignment = Assignment.where(:task_id => @task.id, :course_id => @user.course.id).first

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @completed_task }
    end
  end

  # GET /completed_tasks/1/edit
  def edit
    @completed_task = CompletedTask.find(params[:id])
  end

  # POST /completed_tasks
  # POST /completed_tasks.json
  def create
    @completed_task = CompletedTask.new(params[:completed_task])
    
    if not @completed_task.save
      redirect_to :back
    end

    if (params[:commit] == "Save and Submit")
      @assignment = Assignment.find(params[:assignment_id])
      @completed_assignment = CompletedAssignment.new(:assignment_id => @assignment.id, :user_id => current_user.id, :completed_task_id => @completed_task.id, :current => true)
      @completed_assignment.save
      redirect_to @assignment
    else
      redirect_to :back
    end
  end

  # PUT /completed_tasks/1
  # PUT /completed_tasks/1.json
  def update
    @completed_task = CompletedTask.find(params[:id])

    respond_to do |format|
      if @completed_task.update_attributes(params[:completed_task])
        format.html { redirect_to @completed_task, notice: 'Completed task was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @completed_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /completed_tasks/1
  # DELETE /completed_tasks/1.json
  def destroy
    @completed_task = CompletedTask.find(params[:id])
    @completed_task.destroy

    respond_to do |format|
      format.html { redirect_to completed_tasks_url }
      format.json { head :no_content }
    end
  end
end
