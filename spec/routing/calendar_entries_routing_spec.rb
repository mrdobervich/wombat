require "spec_helper"

describe CalendarEntriesController do
  describe "routing" do

    it "routes to #index" do
      get("/calendar_entries").should route_to("calendar_entries#index")
    end

    it "routes to #new" do
      get("/calendar_entries/new").should route_to("calendar_entries#new")
    end

    it "routes to #show" do
      get("/calendar_entries/1").should route_to("calendar_entries#show", :id => "1")
    end

    it "routes to #edit" do
      get("/calendar_entries/1/edit").should route_to("calendar_entries#edit", :id => "1")
    end

    it "routes to #create" do
      post("/calendar_entries").should route_to("calendar_entries#create")
    end

    it "routes to #update" do
      put("/calendar_entries/1").should route_to("calendar_entries#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/calendar_entries/1").should route_to("calendar_entries#destroy", :id => "1")
    end

  end
end
