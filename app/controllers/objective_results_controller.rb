class ObjectiveResultsController < ApplicationController
  # GET /objective_results
  # GET /objective_results.json
  def index
    @objective_results = ObjectiveResult.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @objective_results }
    end
  end

  # GET /objective_results/1
  # GET /objective_results/1.json
  def show
    @objective_result = ObjectiveResult.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @objective_result }
    end
  end

  # GET /objective_results/new
  # GET /objective_results/new.json
  def new
    @objective_result = ObjectiveResult.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @objective_result }
    end
  end

  # GET /objective_results/1/edit
  def edit
    @objective_result = ObjectiveResult.find(params[:id])

    redirect_to :back
  end

  # POST /objective_results
  # POST /objective_results.json
  def create
    @objective_result = ObjectiveResult.new(params[:objective_result])

    respond_to do |format|
      if @objective_result.save
        format.html { redirect_to @objective_result, notice: 'Objective result was successfully created.' }
        format.json { render json: @objective_result, status: :created, location: @objective_result }
      else
        format.html { render action: "new" }
        format.json { render json: @objective_result.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /objective_results/1
  # PUT /objective_results/1.json
  def update
    @objective_result = ObjectiveResult.find(params[:id])

    respond_to do |format|
      if @objective_result.update_attributes(params[:objective_result])
        format.html { redirect_to :back}
        format.json { head :no_content }
      else
        format.html { redirect_to :back }
        format.json { render json: @objective_result.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /objective_results/1
  # DELETE /objective_results/1.json
  def destroy
    @objective_result = ObjectiveResult.find(params[:id])
    @objective_result.destroy

    respond_to do |format|
      format.html { redirect_to objective_results_url }
      format.json { head :no_content }
    end
  end
end
