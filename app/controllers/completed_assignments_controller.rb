class CompletedAssignmentsController < ApplicationController
  load_and_authorize_resource

  # GET /completed_assignments
  # GET /completed_assignments.json
  def index
    @completed_assignments = CompletedAssignment.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @completed_assignments }
    end
  end

  # GET /completed_assignments/1
  # GET /completed_assignments/1.json
  def show
    @completed_assignment = CompletedAssignment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @completed_assignment }
    end
  end

  # GET /completed_assignments/new
  # GET /completed_assignments/new.json
  def new
    @completed_assignment = CompletedAssignment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @completed_assignment }
    end
  end

  # GET /completed_assignments/1/edit
  def edit
    @completed_assignment = CompletedAssignment.find(params[:id])
  end

  # POST /completed_assignments
  # POST /completed_assignments.json
  def create
    if (params[:completed_task])
      params[:completed_assignment] ||= {}
      params[:completed_assignment][:completed_task_id] = params[:completed_task]
      params[:completed_assignment][:user_id] = current_user.id
      params[:completed_assignment][:assignment_id] = params[:assignment_id]
    end

    @old = CompletedAssignment.where(:user_id => current_user.id, :assignment_id => params[:completed_assignment][:assignment_id], :current => true).first
    @completed_assignment = CompletedAssignment.new(params[:completed_assignment])

    respond_to do |format|
      if @completed_assignment.save

        @completed_assignment.current = true     # set new one to current
        @old.current = false if @old
        @completed_assignment.save
        @old.save if @old

        format.html { redirect_to :back }
        format.json { render json: @completed_assignment, status: :created, location: @completed_assignment }
      else
        format.html { redirect_to :back }
        format.json { render json: @completed_assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /completed_assignments/1
  # PUT /completed_assignments/1.json
  def update
    @completed_assignment = CompletedAssignment.find(params[:id])

    respond_to do |format|
      if @completed_assignment.update_attributes(params[:completed_assignment])
        format.html { redirect_to @completed_assignment, notice: 'Completed assignment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @completed_assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /completed_assignments/1
  # DELETE /completed_assignments/1.json
  def destroy
    @completed_assignment = CompletedAssignment.find(params[:id])
    @completed_assignment.destroy

    respond_to do |format|
      format.html { redirect_to completed_assignments_url }
      format.json { head :no_content }
    end
  end
end
