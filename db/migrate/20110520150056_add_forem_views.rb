# frozen_string_literal: true

class AddForemViews < ActiveRecord::Migration[5.1]
  def change
    create_table :forem_views do |t|
      t.integer :user_id
      t.integer :topic_id
      t.datetime :created_at
    end
  end
end
