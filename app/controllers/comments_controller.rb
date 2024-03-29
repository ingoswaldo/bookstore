class CommentsController < ApplicationController
  before_action :set_book

  def index
    @comments = @book.comments.approved
  end

  private

    def set_book
      @book = Book.find(params[:book_id])
    end
end
