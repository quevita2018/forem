class AddPinnedToForemTopics < ActiveRecord::Migration[5.1]
  def change
    add_column :forem_topics, :pinned, :boolean, :default => false, :nullable => false
  end
end
