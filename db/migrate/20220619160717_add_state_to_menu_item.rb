class AddStateToMenuItem < ActiveRecord::Migration[5.2]
  def change
    add_column :menu_items, :state, :string
  end
end
