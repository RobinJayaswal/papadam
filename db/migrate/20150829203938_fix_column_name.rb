class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :blog_users, :username, :name
  end
end
