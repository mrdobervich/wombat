require 'spec_helper'

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

describe ObjectivesController do

  # This should return the minimal set of attributes required to create a valid
  # Objective. As you add validations to Objective, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "assignment" => "" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ObjectivesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all objectives as @objectives" do
      objective = Objective.create! valid_attributes
      get :index, {}, valid_session
      assigns(:objectives).should eq([objective])
    end
  end

  describe "GET show" do
    it "assigns the requested objective as @objective" do
      objective = Objective.create! valid_attributes
      get :show, {:id => objective.to_param}, valid_session
      assigns(:objective).should eq(objective)
    end
  end

  describe "GET new" do
    it "assigns a new objective as @objective" do
      get :new, {}, valid_session
      assigns(:objective).should be_a_new(Objective)
    end
  end

  describe "GET edit" do
    it "assigns the requested objective as @objective" do
      objective = Objective.create! valid_attributes
      get :edit, {:id => objective.to_param}, valid_session
      assigns(:objective).should eq(objective)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Objective" do
        expect {
          post :create, {:objective => valid_attributes}, valid_session
        }.to change(Objective, :count).by(1)
      end

      it "assigns a newly created objective as @objective" do
        post :create, {:objective => valid_attributes}, valid_session
        assigns(:objective).should be_a(Objective)
        assigns(:objective).should be_persisted
      end

      it "redirects to the created objective" do
        post :create, {:objective => valid_attributes}, valid_session
        response.should redirect_to(Objective.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved objective as @objective" do
        # Trigger the behavior that occurs when invalid params are submitted
        Objective.any_instance.stub(:save).and_return(false)
        post :create, {:objective => { "assignment" => "invalid value" }}, valid_session
        assigns(:objective).should be_a_new(Objective)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Objective.any_instance.stub(:save).and_return(false)
        post :create, {:objective => { "assignment" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested objective" do
        objective = Objective.create! valid_attributes
        # Assuming there are no other objectives in the database, this
        # specifies that the Objective created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Objective.any_instance.should_receive(:update_attributes).with({ "assignment" => "" })
        put :update, {:id => objective.to_param, :objective => { "assignment" => "" }}, valid_session
      end

      it "assigns the requested objective as @objective" do
        objective = Objective.create! valid_attributes
        put :update, {:id => objective.to_param, :objective => valid_attributes}, valid_session
        assigns(:objective).should eq(objective)
      end

      it "redirects to the objective" do
        objective = Objective.create! valid_attributes
        put :update, {:id => objective.to_param, :objective => valid_attributes}, valid_session
        response.should redirect_to(objective)
      end
    end

    describe "with invalid params" do
      it "assigns the objective as @objective" do
        objective = Objective.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Objective.any_instance.stub(:save).and_return(false)
        put :update, {:id => objective.to_param, :objective => { "assignment" => "invalid value" }}, valid_session
        assigns(:objective).should eq(objective)
      end

      it "re-renders the 'edit' template" do
        objective = Objective.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Objective.any_instance.stub(:save).and_return(false)
        put :update, {:id => objective.to_param, :objective => { "assignment" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested objective" do
      objective = Objective.create! valid_attributes
      expect {
        delete :destroy, {:id => objective.to_param}, valid_session
      }.to change(Objective, :count).by(-1)
    end

    it "redirects to the objectives list" do
      objective = Objective.create! valid_attributes
      delete :destroy, {:id => objective.to_param}, valid_session
      response.should redirect_to(objectives_url)
    end
  end

end
