require "spec_helper"

describe CompletedAssignmentsController do
  describe "routing" do

    it "routes to #index" do
      get("/completed_assignments").should route_to("completed_assignments#index")
    end

    it "routes to #new" do
      get("/completed_assignments/new").should route_to("completed_assignments#new")
    end

    it "routes to #show" do
      get("/completed_assignments/1").should route_to("completed_assignments#show", :id => "1")
    end

    it "routes to #edit" do
      get("/completed_assignments/1/edit").should route_to("completed_assignments#edit", :id => "1")
    end

    it "routes to #create" do
      post("/completed_assignments").should route_to("completed_assignments#create")
    end

    it "routes to #update" do
      put("/completed_assignments/1").should route_to("completed_assignments#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/completed_assignments/1").should route_to("completed_assignments#destroy", :id => "1")
    end

  end
end
