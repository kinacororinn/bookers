class BooksController < ApplicationController
  def new
    @book= Book.new
  end
  def create
    book =Book.new(book_params)
    book.save
    redirect_to books_path
 end

private
def book_params
params.require(:book).permit(:title, :body)
end
def show
end
def index
end
def edit

end
end
