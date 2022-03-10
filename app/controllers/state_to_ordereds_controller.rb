class StateToOrderedsController < ApplicationController
    
    def update
        @books=Book.where(status: "未購入")
        @books.update(status: "発注済")
        
        PurchaseOrderMailer.order(@books,current_user).deliver
        redirect_to books_path, notice: 'メールが送信されました'
    end
end