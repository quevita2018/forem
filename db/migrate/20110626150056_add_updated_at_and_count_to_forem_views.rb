# frozen_string_literal: true

class AddUpdatedAtAndCountToForemViews < ActiveRecord::Migration[5.1]
  def change
    add_column :forem_views, :updated_at, :datetime
    add_column :forem_views, :count, :integer, default: 0
  end
end
