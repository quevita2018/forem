# frozen_string_literal: true

class AddHiddenToForemTopics < ActiveRecord::Migration[5.1]
  def change
    add_column :forem_topics, :hidden, :boolean, default: false
  end
end
