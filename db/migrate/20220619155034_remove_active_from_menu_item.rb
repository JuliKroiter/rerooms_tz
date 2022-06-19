class RemoveActiveFromMenuItem < ActiveRecord::Migration[5.2]
  def change
    remove_column :menu_items, :active, :boolean
  end
end
