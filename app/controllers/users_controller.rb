class UsersController < ApplicationController
  def index
    @users = User.all
    .page(params[:page]).per(10).reverse_order#ページング表示#10項目ごとに表示#最新順
  end
end