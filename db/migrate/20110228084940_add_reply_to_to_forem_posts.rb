class AddReplyToToForemPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :forem_posts, :reply_to_id, :integer
  end
end
