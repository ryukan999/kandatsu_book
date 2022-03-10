class SearchesController < ApplicationController
  
    def index
        @q = Book.ransack(search_params)
        #binding.pry
        @books = @q.result.page(params[:page]).per(10).reverse_order
        
    end
    
private
  def search_params
    return {} if params[:q].blank?
    params.require(:q).permit(
      :s,
      :title_cont,
      :author_cont,
      :publisher_cont,
      :isbn_cont,
      :summary_cont
      
    )
  end
end