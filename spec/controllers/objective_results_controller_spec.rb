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

describe ObjectiveResultsController do

  # This should return the minimal set of attributes required to create a valid
  # ObjectiveResult. As you add validations to ObjectiveResult, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "objective" => "" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ObjectiveResultsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all objective_results as @objective_results" do
      objective_result = ObjectiveResult.create! valid_attributes
      get :index, {}, valid_session
      assigns(:objective_results).should eq([objective_result])
    end
  end

  describe "GET show" do
    it "assigns the requested objective_result as @objective_result" do
      objective_result = ObjectiveResult.create! valid_attributes
      get :show, {:id => objective_result.to_param}, valid_session
      assigns(:objective_result).should eq(objective_result)
    end
  end

  describe "GET new" do
    it "assigns a new objective_result as @objective_result" do
      get :new, {}, valid_session
      assigns(:objective_result).should be_a_new(ObjectiveResult)
    end
  end

  describe "GET edit" do
    it "assigns the requested objective_result as @objective_result" do
      objective_result = ObjectiveResult.create! valid_attributes
      get :edit, {:id => objective_result.to_param}, valid_session
      assigns(:objective_result).should eq(objective_result)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new ObjectiveResult" do
        expect {
          post :create, {:objective_result => valid_attributes}, valid_session
        }.to change(ObjectiveResult, :count).by(1)
      end

      it "assigns a newly created objective_result as @objective_result" do
        post :create, {:objective_result => valid_attributes}, valid_session
        assigns(:objective_result).should be_a(ObjectiveResult)
        assigns(:objective_result).should be_persisted
      end

      it "redirects to the created objective_result" do
        post :create, {:objective_result => valid_attributes}, valid_session
        response.should redirect_to(ObjectiveResult.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved objective_result as @objective_result" do
        # Trigger the behavior that occurs when invalid params are submitted
        ObjectiveResult.any_instance.stub(:save).and_return(false)
        post :create, {:objective_result => { "objective" => "invalid value" }}, valid_session
        assigns(:objective_result).should be_a_new(ObjectiveResult)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        ObjectiveResult.any_instance.stub(:save).and_return(false)
        post :create, {:objective_result => { "objective" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested objective_result" do
        objective_result = ObjectiveResult.create! valid_attributes
        # Assuming there are no other objective_results in the database, this
        # specifies that the ObjectiveResult created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        ObjectiveResult.any_instance.should_receive(:update_attributes).with({ "objective" => "" })
        put :update, {:id => objective_result.to_param, :objective_result => { "objective" => "" }}, valid_session
      end

      it "assigns the requested objective_result as @objective_result" do
        objective_result = ObjectiveResult.create! valid_attributes
        put :update, {:id => objective_result.to_param, :objective_result => valid_attributes}, valid_session
        assigns(:objective_result).should eq(objective_result)
      end

      it "redirects to the objective_result" do
        objective_result = ObjectiveResult.create! valid_attributes
        put :update, {:id => objective_result.to_param, :objective_result => valid_attributes}, valid_session
        response.should redirect_to(objective_result)
      end
    end

    describe "with invalid params" do
      it "assigns the objective_result as @objective_result" do
        objective_result = ObjectiveResult.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        ObjectiveResult.any_instance.stub(:save).and_return(false)
        put :update, {:id => objective_result.to_param, :objective_result => { "objective" => "invalid value" }}, valid_session
        assigns(:objective_result).should eq(objective_result)
      end

      it "re-renders the 'edit' template" do
        objective_result = ObjectiveResult.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        ObjectiveResult.any_instance.stub(:save).and_return(false)
        put :update, {:id => objective_result.to_param, :objective_result => { "objective" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested objective_result" do
      objective_result = ObjectiveResult.create! valid_attributes
      expect {
        delete :destroy, {:id => objective_result.to_param}, valid_session
      }.to change(ObjectiveResult, :count).by(-1)
    end

    it "redirects to the objective_results list" do
      objective_result = ObjectiveResult.create! valid_attributes
      delete :destroy, {:id => objective_result.to_param}, valid_session
      response.should redirect_to(objective_results_url)
    end
  end

end