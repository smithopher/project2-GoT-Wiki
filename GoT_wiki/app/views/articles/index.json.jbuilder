json.array!(@articles) do |article|
  json.extract! article, :id, :author_id, :title, :content, :updated_at, :category_id, :house_id, :photo_path
  json.url article_url(article, format: :json)
end
