module BooksHelper
  def get_availability(book)
    if Checkout.exists?(:book_id => book.id)
      return false
    else
      return true
    end
  end
end
