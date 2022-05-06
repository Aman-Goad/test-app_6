json.extract! create_article, :id, :title, :description, :created_at, :updated_at
json.url create_article_url(create_article, format: :json)
