require "spec_helper"

describe FeaturedCodesController do
  describe "routing" do

    it "routes to #index" do
      get("/featured_codes").should route_to("featured_codes#index")
    end

    it "routes to #new" do
      get("/featured_codes/new").should route_to("featured_codes#new")
    end

    it "routes to #show" do
      get("/featured_codes/1").should route_to("featured_codes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/featured_codes/1/edit").should route_to("featured_codes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/featured_codes").should route_to("featured_codes#create")
    end

    it "routes to #update" do
      put("/featured_codes/1").should route_to("featured_codes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/featured_codes/1").should route_to("featured_codes#destroy", :id => "1")
    end

  end
end
