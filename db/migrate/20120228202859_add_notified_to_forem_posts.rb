class AddNotifiedToForemPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :forem_posts, :notified, :boolean, :default => false
  end
end
