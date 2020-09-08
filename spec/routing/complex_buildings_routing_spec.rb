require "rails_helper"

RSpec.describe ComplexBuildingsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/complex_buildings").to route_to("complex_buildings#index")
    end

    it "routes to #new" do
      expect(get: "/complex_buildings/new").to route_to("complex_buildings#new")
    end

    it "routes to #show" do
      expect(get: "/complex_buildings/1").to route_to("complex_buildings#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/complex_buildings/1/edit").to route_to("complex_buildings#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/complex_buildings").to route_to("complex_buildings#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/complex_buildings/1").to route_to("complex_buildings#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/complex_buildings/1").to route_to("complex_buildings#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/complex_buildings/1").to route_to("complex_buildings#destroy", id: "1")
    end
  end
end
