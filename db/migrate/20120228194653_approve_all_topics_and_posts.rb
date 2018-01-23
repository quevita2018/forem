class ApproveAllTopicsAndPosts < ActiveRecord::Migration[5.1]
  def up
    Forem::Topic.update_all :state => "approved"
    Forem::Post.update_all :state => "approved"
  end

  def down
  end
end

