require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  setup do
    @article_one = articles(:one)
    @article_two = articles(:two)
    @comment_one = comments(:one)
    @comment_two = comments(:two)
  end

  def test_the_truth
    assert true
  end

  test 'should not save article without title' do
    article = Article.new
    assert_not article.save
  end

  test 'should report error' do
    assert_raises(NameError) do
      some_undefined_variable
    end
  end
end
