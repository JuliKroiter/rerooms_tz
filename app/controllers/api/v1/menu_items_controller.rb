module Api
  module V1
    class MenuItemsController < ApplicationController
      def index
        @search = MenuItem.ransack(search_params).result.total

        render json:  @search,
               only: [:id, :name, :state],
               methods: [:parent_name]
      end

      private

      def search_params
        {state_cont: params[:state]}
      end
    end
  end
end