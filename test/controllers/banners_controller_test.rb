require 'test_helper'

class BannersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get banners_index_url
    assert_response :success
  end

  test "should get new" do
    get banners_new_url
    assert_response :success
  end

  test "should get create" do
    get banners_create_url
    assert_response :success
  end

  test "should get destroy" do
    get banners_destroy_url
    assert_response :success
  end

end
