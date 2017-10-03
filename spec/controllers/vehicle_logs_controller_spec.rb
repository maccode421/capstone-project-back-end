require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe VehicleLogsController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # VehicleLog. As you add validations to VehicleLog, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # VehicleLogsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all vehicle_logs as @vehicle_logs" do
      vehicle_log = VehicleLog.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(assigns(:vehicle_logs)).to eq([vehicle_log])
    end
  end

  describe "GET #show" do
    it "assigns the requested vehicle_log as @vehicle_log" do
      vehicle_log = VehicleLog.create! valid_attributes
      get :show, params: {id: vehicle_log.to_param}, session: valid_session
      expect(assigns(:vehicle_log)).to eq(vehicle_log)
    end
  end

  describe "GET #new" do
    it "assigns a new vehicle_log as @vehicle_log" do
      get :new, params: {}, session: valid_session
      expect(assigns(:vehicle_log)).to be_a_new(VehicleLog)
    end
  end

  describe "GET #edit" do
    it "assigns the requested vehicle_log as @vehicle_log" do
      vehicle_log = VehicleLog.create! valid_attributes
      get :edit, params: {id: vehicle_log.to_param}, session: valid_session
      expect(assigns(:vehicle_log)).to eq(vehicle_log)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new VehicleLog" do
        expect {
          post :create, params: {vehicle_log: valid_attributes}, session: valid_session
        }.to change(VehicleLog, :count).by(1)
      end

      it "assigns a newly created vehicle_log as @vehicle_log" do
        post :create, params: {vehicle_log: valid_attributes}, session: valid_session
        expect(assigns(:vehicle_log)).to be_a(VehicleLog)
        expect(assigns(:vehicle_log)).to be_persisted
      end

      it "redirects to the created vehicle_log" do
        post :create, params: {vehicle_log: valid_attributes}, session: valid_session
        expect(response).to redirect_to(VehicleLog.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved vehicle_log as @vehicle_log" do
        post :create, params: {vehicle_log: invalid_attributes}, session: valid_session
        expect(assigns(:vehicle_log)).to be_a_new(VehicleLog)
      end

      it "re-renders the 'new' template" do
        post :create, params: {vehicle_log: invalid_attributes}, session: valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested vehicle_log" do
        vehicle_log = VehicleLog.create! valid_attributes
        put :update, params: {id: vehicle_log.to_param, vehicle_log: new_attributes}, session: valid_session
        vehicle_log.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested vehicle_log as @vehicle_log" do
        vehicle_log = VehicleLog.create! valid_attributes
        put :update, params: {id: vehicle_log.to_param, vehicle_log: valid_attributes}, session: valid_session
        expect(assigns(:vehicle_log)).to eq(vehicle_log)
      end

      it "redirects to the vehicle_log" do
        vehicle_log = VehicleLog.create! valid_attributes
        put :update, params: {id: vehicle_log.to_param, vehicle_log: valid_attributes}, session: valid_session
        expect(response).to redirect_to(vehicle_log)
      end
    end

    context "with invalid params" do
      it "assigns the vehicle_log as @vehicle_log" do
        vehicle_log = VehicleLog.create! valid_attributes
        put :update, params: {id: vehicle_log.to_param, vehicle_log: invalid_attributes}, session: valid_session
        expect(assigns(:vehicle_log)).to eq(vehicle_log)
      end

      it "re-renders the 'edit' template" do
        vehicle_log = VehicleLog.create! valid_attributes
        put :update, params: {id: vehicle_log.to_param, vehicle_log: invalid_attributes}, session: valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested vehicle_log" do
      vehicle_log = VehicleLog.create! valid_attributes
      expect {
        delete :destroy, params: {id: vehicle_log.to_param}, session: valid_session
      }.to change(VehicleLog, :count).by(-1)
    end

    it "redirects to the vehicle_logs list" do
      vehicle_log = VehicleLog.create! valid_attributes
      delete :destroy, params: {id: vehicle_log.to_param}, session: valid_session
      expect(response).to redirect_to(vehicle_logs_url)
    end
  end

end
