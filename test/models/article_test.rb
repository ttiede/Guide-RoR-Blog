require 'test_helper'

class ArticleTest < ActiveSupport::TestCase

  def test_the_truth
    assert true
  end
  
  test "should not save article without title" do
    article = Article.new
    assert_not article.save
  end

  test "should report error" do
    assert_raises(NameError) do
      some_undefined_variable
    end
  end
end
