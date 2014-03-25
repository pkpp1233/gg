require "spec_helper"

describe GeniusController do
  describe "routing" do

    it "routes to #index" do
      get("/genius").should route_to("genius#index")
    end

    it "routes to #new" do
      get("/genius/new").should route_to("genius#new")
    end

    it "routes to #show" do
      get("/genius/1").should route_to("genius#show", :id => "1")
    end

    it "routes to #edit" do
      get("/genius/1/edit").should route_to("genius#edit", :id => "1")
    end

    it "routes to #create" do
      post("/genius").should route_to("genius#create")
    end

    it "routes to #update" do
      put("/genius/1").should route_to("genius#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/genius/1").should route_to("genius#destroy", :id => "1")
    end

  end
end
