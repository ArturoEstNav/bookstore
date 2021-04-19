class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :create, :new]

  def index
    @books = Book.all
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
