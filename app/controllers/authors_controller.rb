class AuthorsController < ApplicationController
  def index
    @books = Book.joins(:author).merge(Author.order(name: :asc)).order('name').active.page params[:page]
  end

  def show
    @author = Author.find params[:id]
    @books = @author.books.order('name').active.page params[:page]
  end
end
