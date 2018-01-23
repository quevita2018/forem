# frozen_string_literal: true

class AddLockedToForemTopics < ActiveRecord::Migration[5.1]
  def change
    add_column :forem_topics, :locked, :boolean, null: false, default: false
  end
end
