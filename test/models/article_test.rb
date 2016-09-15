require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  def test_the_truth
    assert true
  end

  test "should not save article without title" do
    article = Article.new
    assert_not article.save
  end

  test "should save article and a comment" do
    article = Article.new
    article.text="text"
    article.title="title"
    article.comments.new
    article.comments.first
    article.comments.first.commenter="teste"
    article.save
    assert Comment.exists?(article.comments.first.id)
  end

  test "should delete article and a comment" do
    article = Article.new
    article.text="text"
    article.title="title"
    article.comments.new
    article.comments.first
    article.comments.first.commenter="teste"
    article.save

    id_comment = article.comments.first.id

    article.destroy
    assert_not Comment.exists?(id_comment)
  end


  test "should report error" do
    assert_raises(NameError) do
      some_undefined_variable
    end
  end
end
