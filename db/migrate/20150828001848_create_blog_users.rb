class CreateBlogUsers < ActiveRecord::Migration
  def change
    create_table :blog_users do |t|
      t.string :username
      t.string :password_digest

      t.timestamps
    end
  end
end
