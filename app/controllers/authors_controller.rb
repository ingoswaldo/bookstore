class AuthorsController < ApplicationController
  def index
    @authors = Author.order('name')
  end
end
