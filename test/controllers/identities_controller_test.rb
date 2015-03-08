require 'test_helper'

class IdentitiesControllerTest < ActionController::TestCase
  setup do
    @identity = identities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:identities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create identity" do
    assert_difference('Identity.count') do
      post :create, identity: { campus: @identity.campus, class: @identity.class, enrollment_id: @identity.enrollment_id, expiration: @identity.expiration, last_printed: @identity.last_printed, name: @identity.name, user_id: @identity.user_id, user_name: @identity.user_name }
    end

    assert_redirected_to identity_path(assigns(:identity))
  end

  test "should show identity" do
    get :show, id: @identity
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @identity
    assert_response :success
  end

  test "should update identity" do
    patch :update, id: @identity, identity: { campus: @identity.campus, class: @identity.class, enrollment_id: @identity.enrollment_id, expiration: @identity.expiration, last_printed: @identity.last_printed, name: @identity.name, user_id: @identity.user_id, user_name: @identity.user_name }
    assert_redirected_to identity_path(assigns(:identity))
  end

  test "should destroy identity" do
    assert_difference('Identity.count', -1) do
      delete :destroy, id: @identity
    end

    assert_redirected_to identities_path
  end
end
