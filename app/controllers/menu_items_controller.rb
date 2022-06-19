class MenuItemsController < ApplicationController
  def index
    @root_menu_items = MenuItem.roots

    @q = Ransack::Search.new(MenuItem)
    search = MenuItem.ransack(params[:q])
    @menu_items = search.result.total
  end
end
