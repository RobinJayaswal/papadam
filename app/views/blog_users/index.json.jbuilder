json.array!(@blog_users) do |blog_user|
  json.extract! blog_user, :id, :username, :password_digest
  json.url blog_user_url(blog_user, format: :json)
end
