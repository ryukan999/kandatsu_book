json.extract! book, :id, :image, :title, :author, :publisher, :published_at, :group, :registrator, :price, :summary, :isbn, :google_books_api_id, :status, :comment, :created_at, :updated_at
json.url book_url(book, format: :json)
