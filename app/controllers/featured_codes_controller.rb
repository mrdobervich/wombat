class FeaturedCodesController < ApplicationController
  # GET /featured_codes
  # GET /featured_codes.json
  def index
    @featured_codes = FeaturedCode.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @featured_codes }
    end
  end

  # GET /featured_codes/1
  # GET /featured_codes/1.json
  def show
    @featured_code = FeaturedCode.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @featured_code }
    end
  end

  # GET /featured_codes/new
  # GET /featured_codes/new.json
  def new
    @featured_code = FeaturedCode.new

    if params[:completed_assignment_id]
      @completed_assignment = CompletedAssignment.find(params[:completed_assignment_id])
      @featured_code.title = @completed_assignment.assignment.task.title
      @featured_code.author = @completed_assignment.user.name
      @featured_code.short_task_description = @completed_assignment.assignment.task.short_description
      @featured_code.task_description = @completed_assignment.assignment.task.long_description
      @featured_code.code = @completed_assignment.completed_task.solution
      @featured_code.course_id = @completed_assignment.assignment.course_id
    end

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @featured_code }
    end
  end

  # GET /featured_codes/1/edit
  def edit
    @featured_code = FeaturedCode.find(params[:id])
  end

  # POST /featured_codes
  # POST /featured_codes.json
  def create
    @featured_code = FeaturedCode.new(params[:featured_code])

    respond_to do |format|
      if @featured_code.save
        format.html { redirect_to @featured_code, notice: 'Featured code was successfully created.' }
        format.json { render json: @featured_code, status: :created, location: @featured_code }
      else
        format.html { render action: "new" }
        format.json { render json: @featured_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /featured_codes/1
  # PUT /featured_codes/1.json
  def update
    @featured_code = FeaturedCode.find(params[:id])

    respond_to do |format|
      if @featured_code.update_attributes(params[:featured_code])
        format.html { redirect_to @featured_code, notice: 'Featured code was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @featured_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /featured_codes/1
  # DELETE /featured_codes/1.json
  def destroy
    @featured_code = FeaturedCode.find(params[:id])
    @featured_code.destroy

    respond_to do |format|
      format.html { redirect_to featured_codes_url }
      format.json { head :no_content }
    end
  end
end
