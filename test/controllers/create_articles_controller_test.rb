require "test_helper"

class CreateArticlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @create_article = create_articles(:one)
  end

  test "should get index" do
    get create_articles_url
    assert_response :success
  end

  test "should get new" do
    get new_create_article_url
    assert_response :success
  end

  test "should create create_article" do
    assert_difference("CreateArticle.count") do
      post create_articles_url, params: { create_article: { description: @create_article.description, title: @create_article.title } }
    end

    assert_redirected_to create_article_url(CreateArticle.last)
  end

  test "should show create_article" do
    get create_article_url(@create_article)
    assert_response :success
  end

  test "should get edit" do
    get edit_create_article_url(@create_article)
    assert_response :success
  end

  test "should update create_article" do
    patch create_article_url(@create_article), params: { create_article: { description: @create_article.description, title: @create_article.title } }
    assert_redirected_to create_article_url(@create_article)
  end

  test "should destroy create_article" do
    assert_difference("CreateArticle.count", -1) do
      delete create_article_url(@create_article)
    end

    assert_redirected_to create_articles_url
  end
end
