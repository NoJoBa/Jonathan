
  json.extract! constructionplan, :id, :header, :description, :picture, :created_at, :updated_at
json.url constructionplan_url(constructionplan, format: :json)
