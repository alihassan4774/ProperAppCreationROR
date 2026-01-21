class AddPostStatusToBlogs < ActiveRecord::Migration[8.0]
  def change
    add_column :blogs, :status, :integer, default: 0
    add_index :blogs, :slug, unique: true
  end
end
