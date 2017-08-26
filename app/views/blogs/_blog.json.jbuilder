json.extract! blog, :id, :user_id, :pin_id, :title, :description, :created_at, :updated_at
json.url blog_url(blog, format: :json)