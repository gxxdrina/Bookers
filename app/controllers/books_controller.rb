class BooksController < ApplicationController
  def index
    #@books = Book.all 
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to '/books/:id'
  end
  
  def new
    @book = Book.new
  end
  
  def edit
    #@book = book.find(params[:id])
  end
  
  def show
    #@book = book.find(params[:id])
  end
  
  def update
  end

  def destroy
  end

  private
  #ストロングパラメータで入力されたデータ絞り込む
  def book_params
    params.require(:book).permit(:title, :body)
  end  
end
