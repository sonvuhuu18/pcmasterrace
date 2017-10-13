require 'test_helper'

class GpUsControllerTest < ActionController::TestCase
  setup do
    @gpu = gpus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gpus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gpu" do
    assert_difference('Gpu.count') do
      post :create, gpu: {  }
    end

    assert_redirected_to gpu_path(assigns(:gpu))
  end

  test "should show gpu" do
    get :show, id: @gpu
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gpu
    assert_response :success
  end

  test "should update gpu" do
    patch :update, id: @gpu, gpu: {  }
    assert_redirected_to gpu_path(assigns(:gpu))
  end

  test "should destroy gpu" do
    assert_difference('Gpu.count', -1) do
      delete :destroy, id: @gpu
    end

    assert_redirected_to gpus_path
  end
end
