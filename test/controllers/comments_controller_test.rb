require 'test_helper'

class CommentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @articleOne = articles(:one)
    @articleTwo = articles(:two)
    @commentOne = comments(:one)
    @commentTwo = comments(:two)
  end

  teardown do
    Rails.cache.clear
  end

  test "should show article of Comment One " do
    get article_url(@articleOne)
    assert_includes(  @articleOne.comments , @commentOne, :success )
  end

  test "should show article Comment Two" do
    get article_url(@articleOne)
    assert_not_includes(  @articleOne.comments , @commentTwo, :success  )
  end

end
