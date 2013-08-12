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

describe FeaturedCodesController do

  # This should return the minimal set of attributes required to create a valid
  # FeaturedCode. As you add validations to FeaturedCode, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "title" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # FeaturedCodesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all featured_codes as @featured_codes" do
      featured_code = FeaturedCode.create! valid_attributes
      get :index, {}, valid_session
      assigns(:featured_codes).should eq([featured_code])
    end
  end

  describe "GET show" do
    it "assigns the requested featured_code as @featured_code" do
      featured_code = FeaturedCode.create! valid_attributes
      get :show, {:id => featured_code.to_param}, valid_session
      assigns(:featured_code).should eq(featured_code)
    end
  end

  describe "GET new" do
    it "assigns a new featured_code as @featured_code" do
      get :new, {}, valid_session
      assigns(:featured_code).should be_a_new(FeaturedCode)
    end
  end

  describe "GET edit" do
    it "assigns the requested featured_code as @featured_code" do
      featured_code = FeaturedCode.create! valid_attributes
      get :edit, {:id => featured_code.to_param}, valid_session
      assigns(:featured_code).should eq(featured_code)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new FeaturedCode" do
        expect {
          post :create, {:featured_code => valid_attributes}, valid_session
        }.to change(FeaturedCode, :count).by(1)
      end

      it "assigns a newly created featured_code as @featured_code" do
        post :create, {:featured_code => valid_attributes}, valid_session
        assigns(:featured_code).should be_a(FeaturedCode)
        assigns(:featured_code).should be_persisted
      end

      it "redirects to the created featured_code" do
        post :create, {:featured_code => valid_attributes}, valid_session
        response.should redirect_to(FeaturedCode.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved featured_code as @featured_code" do
        # Trigger the behavior that occurs when invalid params are submitted
        FeaturedCode.any_instance.stub(:save).and_return(false)
        post :create, {:featured_code => { "title" => "invalid value" }}, valid_session
        assigns(:featured_code).should be_a_new(FeaturedCode)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        FeaturedCode.any_instance.stub(:save).and_return(false)
        post :create, {:featured_code => { "title" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested featured_code" do
        featured_code = FeaturedCode.create! valid_attributes
        # Assuming there are no other featured_codes in the database, this
        # specifies that the FeaturedCode created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        FeaturedCode.any_instance.should_receive(:update_attributes).with({ "title" => "MyString" })
        put :update, {:id => featured_code.to_param, :featured_code => { "title" => "MyString" }}, valid_session
      end

      it "assigns the requested featured_code as @featured_code" do
        featured_code = FeaturedCode.create! valid_attributes
        put :update, {:id => featured_code.to_param, :featured_code => valid_attributes}, valid_session
        assigns(:featured_code).should eq(featured_code)
      end

      it "redirects to the featured_code" do
        featured_code = FeaturedCode.create! valid_attributes
        put :update, {:id => featured_code.to_param, :featured_code => valid_attributes}, valid_session
        response.should redirect_to(featured_code)
      end
    end

    describe "with invalid params" do
      it "assigns the featured_code as @featured_code" do
        featured_code = FeaturedCode.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        FeaturedCode.any_instance.stub(:save).and_return(false)
        put :update, {:id => featured_code.to_param, :featured_code => { "title" => "invalid value" }}, valid_session
        assigns(:featured_code).should eq(featured_code)
      end

      it "re-renders the 'edit' template" do
        featured_code = FeaturedCode.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        FeaturedCode.any_instance.stub(:save).and_return(false)
        put :update, {:id => featured_code.to_param, :featured_code => { "title" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested featured_code" do
      featured_code = FeaturedCode.create! valid_attributes
      expect {
        delete :destroy, {:id => featured_code.to_param}, valid_session
      }.to change(FeaturedCode, :count).by(-1)
    end

    it "redirects to the featured_codes list" do
      featured_code = FeaturedCode.create! valid_attributes
      delete :destroy, {:id => featured_code.to_param}, valid_session
      response.should redirect_to(featured_codes_url)
    end
  end

end
