require "spec_helper"

describe MasteryCategoriesController do
  describe "routing" do

    it "routes to #index" do
      get("/mastery_categories").should route_to("mastery_categories#index")
    end

    it "routes to #new" do
      get("/mastery_categories/new").should route_to("mastery_categories#new")
    end

    it "routes to #show" do
      get("/mastery_categories/1").should route_to("mastery_categories#show", :id => "1")
    end

    it "routes to #edit" do
      get("/mastery_categories/1/edit").should route_to("mastery_categories#edit", :id => "1")
    end

    it "routes to #create" do
      post("/mastery_categories").should route_to("mastery_categories#create")
    end

    it "routes to #update" do
      put("/mastery_categories/1").should route_to("mastery_categories#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/mastery_categories/1").should route_to("mastery_categories#destroy", :id => "1")
    end

  end
end
