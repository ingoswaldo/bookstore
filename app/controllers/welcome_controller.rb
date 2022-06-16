class WelcomeController < ApplicationController
  def index
    @total = {
      books_activated: Book.active.size,
      authors_with_books_published: Author.joins(:books).where(books: {active: true}).distinct.size
    }
  end
end
