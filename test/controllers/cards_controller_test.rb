require 'test_helper'

class CardsControllerTest < ActionController::TestCase
  setup do
    @card = cards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create card" do
    assert_difference('Card.count') do
      post :create, card: { address1: @card.address1, address2: @card.address2, city: @card.city, country: @card.country, expiration: @card.expiration, name: @card.name, number: @card.number, security: @card.security, state: @card.state, user_id: @card.user_id, zip: @card.zip }
    end

    assert_redirected_to card_path(assigns(:card))
  end

  test "should show card" do
    get :show, id: @card
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @card
    assert_response :success
  end

  test "should update card" do
    patch :update, id: @card, card: { address1: @card.address1, address2: @card.address2, city: @card.city, country: @card.country, expiration: @card.expiration, name: @card.name, number: @card.number, security: @card.security, state: @card.state, user_id: @card.user_id, zip: @card.zip }
    assert_redirected_to card_path(assigns(:card))
  end

  test "should destroy card" do
    assert_difference('Card.count', -1) do
      delete :destroy, id: @card
    end

    assert_redirected_to cards_path
  end
end
