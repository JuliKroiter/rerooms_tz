class CreateMenuItems < ActiveRecord::Migration[5.2]
  def change
    create_table :menu_items do |t|
      t.string     :name
      t.boolean    :active
      t.belongs_to :parent_menu_item

      t.timestamps
    end
  end
end
