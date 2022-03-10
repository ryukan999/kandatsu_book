class NowOrderController < ApplicationController
    
    def index
         @books = Book.where(status: "発注済").page(params[:page]).per(10).reverse_order
    end
    
end