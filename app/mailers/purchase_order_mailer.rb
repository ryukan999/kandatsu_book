class PurchaseOrderMailer < ApplicationMailer
    def order(books,user)
      @books = books
      @user = user
      mail(
        from: 'kandai.algorithm@gmail.com',
        to:   'bigbird19980311@gmail.com',
        subject: '書籍の注文依頼fromアルゴリズム研究室',
      )
    end
end
