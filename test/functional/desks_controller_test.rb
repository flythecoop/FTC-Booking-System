require 'test_helper'

class DesksControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:desks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create desk" do
    assert_difference('Desk.count') do
      post :create, :desk => { }
    end

    assert_redirected_to desk_path(assigns(:desk))
  end

  test "should show desk" do
    get :show, :id => desks(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => desks(:one).to_param
    assert_response :success
  end

  test "should update desk" do
    put :update, :id => desks(:one).to_param, :desk => { }
    assert_redirected_to desk_path(assigns(:desk))
  end

  test "should destroy desk" do
    assert_difference('Desk.count', -1) do
      delete :destroy, :id => desks(:one).to_param
    end

    assert_redirected_to desks_path
  end
end
