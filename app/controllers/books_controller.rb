class BooksController < ApplicationController

  http_basic_authenticate_with name: "martha", password: "secret", except: [:index, :show]

  def index
    @books = Book.all
    puts @books.inspect
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def edit
    @book = Book.find(params[:id])
  end

  def create
    @book = Book.new(book_params)

    @book.save
    redirect_to @book
  end

  def update
    @book = Book.find(params[:id])

    if @book.update(book_params)
      redirect_to @book
    else
      render 'edit'
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to books_path
  end

  private
    def book_params
    params.require(:books).permit(:title, :author, :rating, :summary)
    end
end
