require 'test_helper'

class StaticIpsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:static_ips)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create static_ip" do
    assert_difference('StaticIp.count') do
      post :create, :static_ip => { }
    end

    assert_redirected_to static_ip_path(assigns(:static_ip))
  end

  test "should show static_ip" do
    get :show, :id => static_ips(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => static_ips(:one).id
    assert_response :success
  end

  test "should update static_ip" do
    put :update, :id => static_ips(:one).id, :static_ip => { }
    assert_redirected_to static_ip_path(assigns(:static_ip))
  end

  test "should destroy static_ip" do
    assert_difference('StaticIp.count', -1) do
      delete :destroy, :id => static_ips(:one).id
    end

    assert_redirected_to static_ips_path
  end
end
