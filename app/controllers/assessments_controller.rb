class AssessmentsController < ApplicationController
  # GET /assessments
  # GET /assessments.json
  def index
    @assessments = Assessment.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @assessments }
    end
  end

  # GET /assessments/1
  # GET /assessments/1.json
  def show
    @assessment = Assessment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @assessment }
    end
  end

  # GET /assessments/new
  # GET /assessments/new.json
  def new
    params[:assessment] = {}
    params[:assessment][:completed_assignment_id] = params[:completed_assignment_id]
    params[:assessment][:grader_id] = params[:grader_id]
    params[:assessment][:student_id] = params[:student_id]

    @assessment = Assessment.new(params[:assessment])
    @assessment.save
    
    @completed_assignment = CompletedAssignment.find(params[:assessment][:completed_assignment_id])
    @assignment = @completed_assignment.assignment

    @objectives_results = []
    @assignment.objectives.each { |objective |
      @ob = ObjectiveResult.new
      @ob.assessment_id = @assessment.id
      @ob.student_id = @completed_assignment.user_id
      @ob.objective_id = objective.id
      @ob.mastery_category_id = objective.mastery_category_id
      @ob.save
      @objectives_results.push(@ob)
    }
    
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @assessment }
    end
  end

  # GET /assessments/1/edit
  def edit
    @assessment = Assessment.find(params[:id])
  end

  # POST /assessments
  # POST /assessments.json
  def create
    @assessment = Assessment.new(params[:assessment])

    respond_to do |format|
      if @assessment.save
        format.html { redirect_to @assessment, notice: 'Assessment was successfully created.' }
        format.json { render json: @assessment, status: :created, location: @assessment }
      else
        format.html { render action: "new" }
        format.json { render json: @assessment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /assessments/1
  # PUT /assessments/1.json
  def update
    @assessment = Assessment.find(params[:id])

    respond_to do |format|
      if @assessment.update_attributes(params[:assessment])
        format.html { redirect_to @assessment, notice: 'Assessment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @assessment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /assessments/1
  # DELETE /assessments/1.json
  def destroy
    @assessment = Assessment.find(params[:id])
    @assessment.destroy

    respond_to do |format|
      format.html { redirect_to assessments_url }
      format.json { head :no_content }
    end
  end
end
