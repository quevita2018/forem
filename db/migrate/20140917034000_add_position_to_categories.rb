class AddPositionToCategories < ActiveRecord::Migration[5.1]
  def change
    add_column :forem_categories, :position, :integer, :default => 0
  end
end
