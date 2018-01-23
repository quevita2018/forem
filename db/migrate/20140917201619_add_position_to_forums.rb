class AddPositionToForums < ActiveRecord::Migration[5.1]
  def change
    add_column :forem_forums, :position, :integer, :default => 0
  end
end
