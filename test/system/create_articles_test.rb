require "application_system_test_case"

class CreateArticlesTest < ApplicationSystemTestCase
  setup do
    @create_article = create_articles(:one)
  end

  test "visiting the index" do
    visit create_articles_url
    assert_selector "h1", text: "Create articles"
  end

  test "should create create article" do
    visit create_articles_url
    click_on "New create article"

    fill_in "Description", with: @create_article.description
    fill_in "Title", with: @create_article.title
    click_on "Create Create article"

    assert_text "Create article was successfully created"
    click_on "Back"
  end

  test "should update Create article" do
    visit create_article_url(@create_article)
    click_on "Edit this create article", match: :first

    fill_in "Description", with: @create_article.description
    fill_in "Title", with: @create_article.title
    click_on "Update Create article"

    assert_text "Create article was successfully updated"
    click_on "Back"
  end

  test "should destroy Create article" do
    visit create_article_url(@create_article)
    click_on "Destroy this create article", match: :first

    assert_text "Create article was successfully destroyed"
  end
end
