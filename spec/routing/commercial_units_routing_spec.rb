require "rails_helper"

RSpec.describe CommercialUnitsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/commercial_units").to route_to("commercial_units#index")
    end

    it "routes to #new" do
      expect(get: "/commercial_units/new").to route_to("commercial_units#new")
    end

    it "routes to #show" do
      expect(get: "/commercial_units/1").to route_to("commercial_units#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/commercial_units/1/edit").to route_to("commercial_units#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/commercial_units").to route_to("commercial_units#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/commercial_units/1").to route_to("commercial_units#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/commercial_units/1").to route_to("commercial_units#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/commercial_units/1").to route_to("commercial_units#destroy", id: "1")
    end
  end
end
