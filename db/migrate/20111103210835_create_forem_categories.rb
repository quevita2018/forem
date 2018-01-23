# frozen_string_literal: true

class CreateForemCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :forem_categories do |t|
      t.string :name, null: false
      t.timestamps null: true
    end
  end
end
