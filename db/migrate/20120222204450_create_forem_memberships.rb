# frozen_string_literal: true

class CreateForemMemberships < ActiveRecord::Migration[5.1]
  def change
    create_table :forem_memberships do |t|
      t.integer :group_id
      t.integer :member_id
    end

    add_index :forem_memberships, :group_id
  end
end
