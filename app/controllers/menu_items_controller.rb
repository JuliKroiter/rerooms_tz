class MenuItemsController < ApplicationController
  def index
    @root_menu_items = MenuItem.total.roots

    @q = MenuItem.ransack(params[:q])
    @menu_items = @q.result.total
  end
end
