class AssignmentsController < ApplicationController
  load_and_authorize_resource

  # GET /assignments
  # GET /assignments.json
  def index
   if (params[:course_id])
      @course = Course.find(params[:course_id])
      @assignments = @course.assignments
    else
      @assignments = Assignment.all
    end

    params[:id] ||= current_user.id
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @assignments }
    end
  end

  # GET /assignments/1
  # GET /assignments/1.json
  def show
    @assignment = Assignment.find(params[:id])

    @completed_task = CompletedTask.new
    @user = current_user
    @task = @assignment.task

    @old_solutions = @user.completed_tasks.where(:task_id => @task.id).order("created_at DESC")
    @revisions = @old_solutions.size()

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @assignment }
    end
  end

  # GET /assignments/new
  # GET /assignments/new.json
  def new
    @assignment = Assignment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @assignment }
    end
  end

  # GET /assignments/1/edit
  def edit
    @assignment = Assignment.find(params[:id])
  end

  # POST /assignments
  # POST /assignments.json
  def create
    ids = params[:m][:cids]
    ids.shift()

    ids.map {|id|
      @assignment = Assignment.new(params[:assignment])
      @assignment.course_id = id;
      @assignment.save

      createDefaultAssessment(@assignment)
    }

    respond_to do |format|
      if @assignment.save
        format.html { redirect_to @assignment, notice: 'Assignment was successfully created.' }
        format.json { render json: @assignment, status: :created, location: @assignment }
      else
        format.html { render action: "new" }
        format.json { render json: @assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /assignments/1
  # PUT /assignments/1.json
  def update
    @assignment = Assignment.find(params[:id])

    respond_to do |format|
      if @assignment.update_attributes(params[:assignment])
        format.html { redirect_to @assignment, notice: 'Assignment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /assignments/1
  # DELETE /assignments/1.json
  def destroy
    @assignment = Assignment.find(params[:id])
    @course = @assignment.course
    @assignment.destroy

    respond_to do |format|
      format.html { redirect_to @course }
      format.json { head :no_content }
    end
  end

  private

  def createDefaultAssessment(assignment)
    MasteryCategory.all.each { |category|
      @objective = Objective.new(:assignment_id => assignment.id, :mastery_category_id => category.id, :objective_type => "range")
      @objective.save
    }
  end
end
