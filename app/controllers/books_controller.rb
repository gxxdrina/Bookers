class BooksController < ApplicationController

  def new
    @book = Book.new
  end
  
  def create
    @book = Book.new(book_params)
    if @book.save
      flash[:notice] = "Book was successfully created." #フラッシュメッセージを定義
      redirect_to book_path(@book.id) #詳細画面へリダイレクト
    else
      @books = Book.all
      render :index
    end  
  end

  def index
    @books = Book.all
    @book = Book.new
  end

  def show
    @book = Book.find(params[:id])
  end
  
  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      flash[:notice] = "Book was successfully updated."
      redirect_to book_path(@book.id)
    else
      render :edit
    end
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to '/books'
  end

  private
  #ストロングパラメータで入力されたデータ絞り込む
  def book_params
    params.require(:book).permit(:title, :body)
  end  
end
