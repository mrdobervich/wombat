require "spec_helper"

describe CompletedTasksController do
  describe "routing" do

    it "routes to #index" do
      get("/completed_tasks").should route_to("completed_tasks#index")
    end

    it "routes to #new" do
      get("/completed_tasks/new").should route_to("completed_tasks#new")
    end

    it "routes to #show" do
      get("/completed_tasks/1").should route_to("completed_tasks#show", :id => "1")
    end

    it "routes to #edit" do
      get("/completed_tasks/1/edit").should route_to("completed_tasks#edit", :id => "1")
    end

    it "routes to #create" do
      post("/completed_tasks").should route_to("completed_tasks#create")
    end

    it "routes to #update" do
      put("/completed_tasks/1").should route_to("completed_tasks#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/completed_tasks/1").should route_to("completed_tasks#destroy", :id => "1")
    end

  end
end
