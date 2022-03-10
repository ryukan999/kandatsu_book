class RentalsController < ApplicationController

  def create
    rental = Rental.new(book_id: params[:id], user_id: current_user.id)
    if rental.save
      redirect_to books_path, notice: '書籍の貸し出し処理を行いました'
    else
      redirect_to books_path, notice: '書籍の貸し出し処理に失敗しました'
    end
  end
  
  def update
    rental = Rental.find(params[:id])
    rental.update(returned: true)
    redirect_to books_path, notice: '書籍の返却処理を行いました。'
  end

  def index
    rental = Rental.find 
  end
end