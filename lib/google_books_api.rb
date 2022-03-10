require 'open-uri'
require 'json'

class GoogleBooksAPI
    BASE_URL = 'https://www.googleapis.com/books/v1/volumes?q=isbn:'
    
    def initialize(isbn)
        @request_url = BASE_URL + isbn
    end
    
def main
    response = open(@request_url).read
    hash = JSON.parse(response)
    hash['']['']
end

end
