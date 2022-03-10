class GoogleBooksApiService
    
    require 'open-uri'
    require 'json'
    
    BASE_URL = 'https://www.googleapis.com/books/v1/volumes?q=isbn:'
    
    def execute(isbn)
        
        @request_url = BASE_URL + isbn
        
         response = open(@request_url).read
         JSON.parse(response)
    end
    
end