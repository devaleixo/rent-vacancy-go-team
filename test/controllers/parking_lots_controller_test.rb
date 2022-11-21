require "test_helper"

class ParkingLotsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get parking_lots_index_url
    assert_response :success
  end

  test "should get show" do
    get parking_lots_show_url
    assert_response :success
  end

  test "should get new" do
    get parking_lots_new_url
    assert_response :success
  end

  test "should get create" do
    get parking_lots_create_url
    assert_response :success
  end

  test "should get edit" do
    get parking_lots_edit_url
    assert_response :success
  end

  test "should get update" do
    get parking_lots_update_url
    assert_response :success
  end

  test "should get destroy" do
    get parking_lots_destroy_url
    assert_response :success
  end
end
