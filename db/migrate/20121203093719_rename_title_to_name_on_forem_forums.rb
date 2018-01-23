# frozen_string_literal: true

class RenameTitleToNameOnForemForums < ActiveRecord::Migration[5.1]
  def up
    rename_column :forem_forums, :title, :name
  end

  def down
    rename_column :forem_forums, :name, :title
  end
end
