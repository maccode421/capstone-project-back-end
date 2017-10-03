require 'rails_helper'

RSpec.describe "VehicleLogs", type: :request do
  describe "GET /vehicle_logs" do
    it "works! (now write some real specs)" do
      get vehicle_logs_path
      expect(response).to have_http_status(200)
    end
  end
end
