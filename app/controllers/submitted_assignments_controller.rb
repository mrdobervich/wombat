class SubmittedAssignmentsController < ApplicationController
  # GET /submitted_assignments
  # GET /submitted_assignments.json
  def index
    @submitted_assignments = SubmittedAssignment.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @submitted_assignments }
    end
  end

  # GET /submitted_assignments/1
  # GET /submitted_assignments/1.json
  def show
    @submitted_assignment = SubmittedAssignment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @submitted_assignment }
    end
  end

  # GET /submitted_assignments/new
  # GET /submitted_assignments/new.json
  def new
    @submitted_assignment = SubmittedAssignment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @submitted_assignment }
    end
  end

  # GET /submitted_assignments/1/edit
  def edit
    @submitted_assignment = SubmittedAssignment.find(params[:id])
  end

  # POST /submitted_assignments
  # POST /submitted_assignments.json
  def create
    @submitted_assignment = SubmittedAssignment.new(params[:submitted_assignment])

    respond_to do |format|
      if @submitted_assignment.save
        format.html { redirect_to @submitted_assignment, notice: 'Submitted assignment was successfully created.' }
        format.json { render json: @submitted_assignment, status: :created, location: @submitted_assignment }
      else
        format.html { render action: "new" }
        format.json { render json: @submitted_assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /submitted_assignments/1
  # PUT /submitted_assignments/1.json
  def update
    @submitted_assignment = SubmittedAssignment.find(params[:id])

    respond_to do |format|
      if @submitted_assignment.update_attributes(params[:submitted_assignment])
        format.html { redirect_to @submitted_assignment, notice: 'Submitted assignment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @submitted_assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /submitted_assignments/1
  # DELETE /submitted_assignments/1.json
  def destroy
    @submitted_assignment = SubmittedAssignment.find(params[:id])
    @submitted_assignment.destroy

    respond_to do |format|
      format.html { redirect_to submitted_assignments_url }
      format.json { head :no_content }
    end
  end
end
