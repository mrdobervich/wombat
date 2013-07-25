class TasksController < ApplicationController
  # GET /tasks
  # GET /tasks.json

  def adminindex
    if params[:tag]
      @tasks = Task.tagged_with(params[:tag])
    else
      @tasks = Task.all
    end
  end

  # GET /tasks/1
  # GET /tasks/1.json
  def show
    @task = Task.find(params[:id])
    @completed_task = CompletedTask.new
    @old_solutions = current_user.completed_tasks.where(:task_id => @task.id).order("created_at DESC")
    @revisions = @old_solutions.size()
    @user = current_user
    @assignment = @user.course.assignments.where(:task_id => @task.id).first

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @task }
    end
  end

  # GET /tasks/new
  # GET /tasks/new.json
  def new
    @task = Task.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @task }
    end
  end

  # GET /tasks/1/edit
  def edit
    @task = Task.find(params[:id])
  end

  # POST /tasks
  # POST /tasks.json
  def create
    @task = Task.new(params[:task])

    respond_to do |format|
      if @task.save
        format.html { redirect_to @task, notice: 'Task was successfully created.' }
        format.json { render json: @task, status: :created, location: @task }
      else
        format.html { render action: "new" }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tasks/1
  # PUT /tasks/1.json
  def update
    @task = Task.find(params[:id])

    respond_to do |format|
      if @task.update_attributes(params[:task])
        format.html { redirect_to @task, notice: 'Task was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tasks/1
  # DELETE /tasks/1.json
  def destroy
    @task = Task.find(params[:id])
    @task.destroy

    respond_to do |format|
      format.html { redirect_to tasks_url }
      format.json { head :no_content }
    end
  end

  def index
    if params[:q]
      if (params[:q][:completed_filter] == 'completed')
        params[:q][:id_in] = current_user.completed_tasks.map { |t| t.id }
      elsif (params[:q][:completed_filter] == 'uncompleted') 
        params[:q][:id_not_in] = current_user.completed_tasks.map { |t| t.id }
      end
    end

    @q = Task.search(params[:q])
    @tags = Task.tag_counts_on :tags
    @tasks = @q.result(:distinct => true)
  end
end
