require 'test_helper'

class ModelsControllerTest < ActionController::TestCase
  setup do
    @model = models(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:models)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create model" do
    assert_difference('Model.count') do
      post :create, model: { Card: @model.Card, address1: @model.address1, address2: @model.address2, city: @model.city, country: @model.country, expiration: @model.expiration, name: @model.name, number: @model.number, security: @model.security, state: @model.state, user_id: @model.user_id, zip: @model.zip }
    end

    assert_redirected_to model_path(assigns(:model))
  end

  test "should show model" do
    get :show, id: @model
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @model
    assert_response :success
  end

  test "should update model" do
    patch :update, id: @model, model: { Card: @model.Card, address1: @model.address1, address2: @model.address2, city: @model.city, country: @model.country, expiration: @model.expiration, name: @model.name, number: @model.number, security: @model.security, state: @model.state, user_id: @model.user_id, zip: @model.zip }
    assert_redirected_to model_path(assigns(:model))
  end

  test "should destroy model" do
    assert_difference('Model.count', -1) do
      delete :destroy, id: @model
    end

    assert_redirected_to models_path
  end
end
