class BooksController < ApplicationController
  before_action :set_book, only: :show

  def index
    @books = Book.order('name').page params[:page]
  end

  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book
      @book = Book.find(params[:id])
    end
end
