require "test_helper"

class ProfileResearchesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get profile_researches_index_url
    assert_response :success
  end

  test "should get show" do
    get profile_researches_show_url
    assert_response :success
  end

  test "should get new" do
    get profile_researches_new_url
    assert_response :success
  end

  test "should get create" do
    get profile_researches_create_url
    assert_response :success
  end

  test "should get edit" do
    get profile_researches_edit_url
    assert_response :success
  end

  test "should get update" do
    get profile_researches_update_url
    assert_response :success
  end

  test "should get destroy" do
    get profile_researches_destroy_url
    assert_response :success
  end
end
