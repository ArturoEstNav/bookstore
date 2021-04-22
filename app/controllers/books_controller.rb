class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update]

  def index
    @cart_item = CartItem.new

    if params[:query].present?
      @books = Book.where(sold: false).search(params[:query])
    else
      @books = Book.where(sold: false)
    end
  end

  def show
  end

  def new
    @book = Book.new
  end

  def edit
  end

  def create
    @book = Book.new(book_params)
    @book.merchant = current_merchant
    @book.merchant_name = current_merchant.name
    if @book.save
      redirect_to book_path(@book)
    else
      render :new
    end
  end

  def update
    @book.update(book_params)
    if @book.save
      redirect_to book_path(@book)
    else
      render :edit
    end
  end

  private

  def set_book
    @book = Book.find(params[:id])
  end

  def book_params
    params.require(:book).permit(:title, :author, :price, :description)
  end
end
