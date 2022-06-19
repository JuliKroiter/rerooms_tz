module Api
  module V1
    class MenuItemsController < ApplicationController
      def index
        search = MenuItem.ransack({state_cont: params[:state]})

        render json:  search.result.total,
               only: [:id, :name, :state],
               methods: [:parent_name]
      end
    end
  end
end