require 'test_helper'

class ArticlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @article = articles(:one)
    @article_two = articles(:two)
    @comment_two = comments(:two)
  end

  teardown do
    Rails.cache.clear
  end

  test 'should get index' do
    get articles_url
    assert_response :success
  end

  test 'should create article' do
    assert_difference('Article.count') do
      post articles_url, params: {
        article: {
          body: 'My blog in Rails again!',
          title: 'Hello Rails is better,
          because if you tell hello world and the word answer??'
        }
      }
    end

    assert_redirected_to article_path(Article.last)
  end

  test 'should show article' do
    get article_url(@article)
    assert_response :success
  end

  test 'should destroy article' do
    assert_difference('Article.count', -1) do
      delete article_url(@article)
    end

    assert_redirected_to articles_path
  end

  test 'should destroy article Error' do
    assert_difference('Article.count', -1) do
      delete article_url(@article_two)
    end

    assert_redirected_to articles_path
  end

  test 'should update article' do
    patch article_url(@article), params: { article: { title: 'updated' } }
    assert_redirected_to article_path(@article)
    @article.reload
    assert_equal 'updated', @article.title
  end
end
