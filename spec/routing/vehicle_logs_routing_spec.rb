require "rails_helper"

RSpec.describe VehicleLogsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/vehicle_logs").to route_to("vehicle_logs#index")
    end

    it "routes to #new" do
      expect(:get => "/vehicle_logs/new").to route_to("vehicle_logs#new")
    end

    it "routes to #show" do
      expect(:get => "/vehicle_logs/1").to route_to("vehicle_logs#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/vehicle_logs/1/edit").to route_to("vehicle_logs#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/vehicle_logs").to route_to("vehicle_logs#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/vehicle_logs/1").to route_to("vehicle_logs#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/vehicle_logs/1").to route_to("vehicle_logs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/vehicle_logs/1").to route_to("vehicle_logs#destroy", :id => "1")
    end

  end
end
