class MyBooksController < ApplicationController
  def index
    @books = current_user.books.all
  end
end
