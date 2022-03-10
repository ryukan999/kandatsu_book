class IsbnsController < ApplicationController
    
    def new
        
    end
    
    def create
       
       # response = GoogleBooksAPI.new(params[:isbn]).main
       response = GoogleBooksApiService.new.execute(params[:isbn])
    
       return redirect_to new_isbn_path, notice: 'ISBNコードが存在しません' if response["totalItems"] == 0
        title = response["items"][0]["volumeInfo"]["title"]
        
        if response["items"][0]["volumeInfo"]["authors"]
            author = response["items"][0]["volumeInfo"]["authors"][0]
        else 
            author = nil
        end
        
        if response["items"][0]["volumeInfo"]["imageLinks"]
        image = response["items"][0]["volumeInfo"]["imageLinks"]["smallThumbnail"]
        else
            image = nil
        end
        publisher = response["items"][0]["volumeInfo"]["publisher"]
        
        published_at = response["items"][0]["volumeInfo"]["publishedDate"]
        
        if response["items"][0]["volumeInfo"]["industryIdentifiers"]
            isbn = response["items"][0]["volumeInfo"]["industryIdentifiers"][1]["identifier"]
        end
        
        summary = response["items"][0]["volumeInfo"]["description"]
        
        
        @book = Book.new(
                        title: title,
                        author: author,
                        publisher: publisher,
                        published_at: published_at,
                        status: params[:status],
                        isbn: isbn,
                        summary: summary
                        )
        @book.remote_image_url = image
        @book.user = current_user
        @book.group_id = params[:group_id]
        @book.comment = params[:comment]
        
        if @book.save
            redirect_to new_isbn_path(@book), notice: '書籍情報が正しく登録されました'
            
        else
            redirect_to new_isbn_path, notice: '同一の書籍が既に登録されています'
            
        end
        
    end
end