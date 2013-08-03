require "spec_helper"

describe ObjectiveResultsController do
  describe "routing" do

    it "routes to #index" do
      get("/objective_results").should route_to("objective_results#index")
    end

    it "routes to #new" do
      get("/objective_results/new").should route_to("objective_results#new")
    end

    it "routes to #show" do
      get("/objective_results/1").should route_to("objective_results#show", :id => "1")
    end

    it "routes to #edit" do
      get("/objective_results/1/edit").should route_to("objective_results#edit", :id => "1")
    end

    it "routes to #create" do
      post("/objective_results").should route_to("objective_results#create")
    end

    it "routes to #update" do
      put("/objective_results/1").should route_to("objective_results#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/objective_results/1").should route_to("objective_results#destroy", :id => "1")
    end

  end
end
