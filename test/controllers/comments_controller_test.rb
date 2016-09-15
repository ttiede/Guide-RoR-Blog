require 'test_helper'

class CommentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @article_one = articles(:one)
    @article_two = articles(:two)
    @comment_one = comments(:one)
    @comment_two = comments(:two)
  end

  teardown do
    Rails.cache.clear
  end

  test 'should show article of Comment One ' do
    get article_url(@article_one)
    assert_includes(@article_one.comments, @comment_one, :success)
  end

  test 'should show article Comment Two' do
    get article_url(@article_one)
    assert_not_includes(@article_one.comments, @comment_two, :success)
  end
end
