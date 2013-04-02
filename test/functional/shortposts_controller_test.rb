require 'test_helper'

class ShortpostsControllerTest < ActionController::TestCase
  setup do
    @shortpost = shortposts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shortposts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shortpost" do
    assert_difference('Shortpost.count') do
      post :create, shortpost: { spost: @shortpost.spost, usr_id: @shortpost.usr_id }
    end

    assert_redirected_to shortpost_path(assigns(:shortpost))
  end

  test "should show shortpost" do
    get :show, id: @shortpost
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shortpost
    assert_response :success
  end

  test "should update shortpost" do
    put :update, id: @shortpost, shortpost: { spost: @shortpost.spost, usr_id: @shortpost.usr_id }
    assert_redirected_to shortpost_path(assigns(:shortpost))
  end

  test "should destroy shortpost" do
    assert_difference('Shortpost.count', -1) do
      delete :destroy, id: @shortpost
    end

    assert_redirected_to shortposts_path
  end
end
