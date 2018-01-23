# frozen_string_literal: true

class CreateForemModeratorGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :forem_moderator_groups do |t|
      t.integer :forum_id
      t.integer :group_id
    end

    add_index :forem_moderator_groups, :forum_id
  end
end
