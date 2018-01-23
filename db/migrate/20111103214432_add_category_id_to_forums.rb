# frozen_string_literal: true

class AddCategoryIdToForums < ActiveRecord::Migration[5.1]
  def change
    add_column :forem_forums, :category_id, :integer

    if Forem::Forum.count > 0
      Forem::Forum.update_all category_id: Forem::Category.first.id
    end
  end
end
