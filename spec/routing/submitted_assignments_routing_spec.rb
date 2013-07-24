require "spec_helper"

describe SubmittedAssignmentsController do
  describe "routing" do

    it "routes to #index" do
      get("/submitted_assignments").should route_to("submitted_assignments#index")
    end

    it "routes to #new" do
      get("/submitted_assignments/new").should route_to("submitted_assignments#new")
    end

    it "routes to #show" do
      get("/submitted_assignments/1").should route_to("submitted_assignments#show", :id => "1")
    end

    it "routes to #edit" do
      get("/submitted_assignments/1/edit").should route_to("submitted_assignments#edit", :id => "1")
    end

    it "routes to #create" do
      post("/submitted_assignments").should route_to("submitted_assignments#create")
    end

    it "routes to #update" do
      put("/submitted_assignments/1").should route_to("submitted_assignments#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/submitted_assignments/1").should route_to("submitted_assignments#destroy", :id => "1")
    end

  end
end
