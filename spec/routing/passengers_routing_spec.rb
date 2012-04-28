require "spec_helper"

describe PassengersController do
  describe "routing" do

    it "routes to #index" do
      get("/passengers").should route_to("passengers#index")
    end

    it "routes to #new" do
      get("/passengers/new").should route_to("passengers#new")
    end

    it "routes to #show" do
      get("/passengers/1").should route_to("passengers#show", :id => "1")
    end

    it "routes to #edit" do
      get("/passengers/1/edit").should route_to("passengers#edit", :id => "1")
    end

    it "routes to #create" do
      post("/passengers").should route_to("passengers#create")
    end

    it "routes to #update" do
      put("/passengers/1").should route_to("passengers#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/passengers/1").should route_to("passengers#destroy", :id => "1")
    end

  end
end
