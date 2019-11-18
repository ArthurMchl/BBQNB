require 'test_helper'

class BarbecuesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get barbecues_index_url
    assert_response :success
  end

  test "should get show" do
    get barbecues_show_url
    assert_response :success
  end

  test "should get new" do
    get barbecues_new_url
    assert_response :success
  end

  test "should get create" do
    get barbecues_create_url
    assert_response :success
  end

  test "should get edit" do
    get barbecues_edit_url
    assert_response :success
  end

  test "should get update" do
    get barbecues_update_url
    assert_response :success
  end

  test "should get destroy" do
    get barbecues_destroy_url
    assert_response :success
  end

end
