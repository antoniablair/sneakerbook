require 'test_helper'

class SneakersControllerTest < ActionController::TestCase
  setup do
    @sneaker = sneakers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sneakers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sneaker" do
    assert_difference('Sneaker.count') do
      post :create, sneaker: { description: @sneaker.description, designer: @sneaker.designer, name: @sneaker.name, picture: @sneaker.picture }
    end

    assert_redirected_to sneaker_path(assigns(:sneaker))
  end

  test "should show sneaker" do
    get :show, id: @sneaker
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sneaker
    assert_response :success
  end

  test "should update sneaker" do
    put :update, id: @sneaker, sneaker: { description: @sneaker.description, designer: @sneaker.designer, name: @sneaker.name, picture: @sneaker.picture }
    assert_redirected_to sneaker_path(assigns(:sneaker))
  end

  test "should destroy sneaker" do
    assert_difference('Sneaker.count', -1) do
      delete :destroy, id: @sneaker
    end

    assert_redirected_to sneakers_path
  end
end
