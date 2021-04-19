class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :create, :new]

  def index
    # @query = params[:q]
    if params[:query].present?
      @book_search = Book.global_search(params[:query])
      @books = @global_search.paginate(page: params[:page], per_page: 20)
    else
      @books = Book.all
    end
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
  end

  def update
  end

  private

  def set_book
    @book = Book.find(params[:id])
  end
end
