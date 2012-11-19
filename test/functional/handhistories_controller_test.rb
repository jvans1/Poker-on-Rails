require 'test_helper'

class HandhistoriesControllerTest < ActionController::TestCase
  setup do
    @handhistory = handhistories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:handhistories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create handhistory" do
    assert_difference('Handhistory.count') do
      post :create, handhistory: {  }
    end

    assert_redirected_to handhistory_path(assigns(:handhistory))
  end

  test "should show handhistory" do
    get :show, id: @handhistory
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @handhistory
    assert_response :success
  end

  test "should update handhistory" do
    put :update, id: @handhistory, handhistory: {  }
    assert_redirected_to handhistory_path(assigns(:handhistory))
  end

  test "should destroy handhistory" do
    assert_difference('Handhistory.count', -1) do
      delete :destroy, id: @handhistory
    end

    assert_redirected_to handhistories_path
  end
end
