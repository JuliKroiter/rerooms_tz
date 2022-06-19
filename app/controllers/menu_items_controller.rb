class MenuItemsController < ApplicationController
  def index
    @root_menu_items = MenuItem.roots
    @menu_items = MenuItem.total
  end
end
