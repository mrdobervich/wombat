class MasteryCategoriesController < ApplicationController
  # GET /mastery_categories
  # GET /mastery_categories.json
  def index
    @mastery_categories = MasteryCategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mastery_categories }
    end
  end

  # GET /mastery_categories/1
  # GET /mastery_categories/1.json
  def show
    @mastery_category = MasteryCategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mastery_category }
    end
  end

  # GET /mastery_categories/new
  # GET /mastery_categories/new.json
  def new
    @mastery_category = MasteryCategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mastery_category }
    end
  end

  # GET /mastery_categories/1/edit
  def edit
    @mastery_category = MasteryCategory.find(params[:id])
  end

  # POST /mastery_categories
  # POST /mastery_categories.json
  def create
    @mastery_category = MasteryCategory.new(params[:mastery_category])

    respond_to do |format|
      if @mastery_category.save
        format.html { redirect_to @mastery_category, notice: 'Mastery category was successfully created.' }
        format.json { render json: @mastery_category, status: :created, location: @mastery_category }
      else
        format.html { render action: "new" }
        format.json { render json: @mastery_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mastery_categories/1
  # PUT /mastery_categories/1.json
  def update
    @mastery_category = MasteryCategory.find(params[:id])

    respond_to do |format|
      if @mastery_category.update_attributes(params[:mastery_category])
        format.html { redirect_to @mastery_category, notice: 'Mastery category was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @mastery_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mastery_categories/1
  # DELETE /mastery_categories/1.json
  def destroy
    @mastery_category = MasteryCategory.find(params[:id])
    @mastery_category.destroy

    respond_to do |format|
      format.html { redirect_to mastery_categories_url }
      format.json { head :no_content }
    end
  end
end
