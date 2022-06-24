class TagsController < ApplicationController
  def index
    @books = Book.joins(:tags).merge(Tag.order(name: :asc)).order('books.name').active.select('tags.id as tag_id, tags.name as tag_name, books.*').page params[:page]
  end

  def show
    @tag = Tag.find params[:id]
    @books = @tag.books.active.page params[:page]
  end
end
