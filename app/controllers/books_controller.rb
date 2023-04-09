class BooksController < ApplicationController

  def new
    @book = Book.new
  end
  
  def create
    book = Book.new(book_params)
    book.save
    redirect_to '/books/:id'
  end

  def index
    @books = Book.all
  end

  def edit
  #@book = Book.find(params[:id])
  end
  
  def show
    #@book = Book.find(params[:id])
  end
  
  def update
    book = Book.find(params[:id])
    book.update(list_params)
    redirect_to book_path(list.id)
  end

  def destroy
  end

  private
  #ストロングパラメータで入力されたデータ絞り込む
  def book_params
    params.require(:book).permit(:title, :body)
  end  
end
