class SearchStatusController < ApplicationController
    def index
         @books = Book.where(status: "未購入").page(params[:page]).per(10).reverse_order
    end
end