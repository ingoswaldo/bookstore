class RequestBooksController < ApplicationController
  def new
    @user = User.new
    @request_book = RequestBook.new
  end

  def create
    @user = User.create_with(first_name: request_book_params[:first_name], last_name: request_book_params[:last_name]).find_or_create_by(email: request_book_params[:email])
    @request_book = RequestBook.new(name: request_book_params[:name], user_id: @user.id)

    if @request_book.save
      redirect_to new_request_book_path, notice: "Request book was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
    def request_book_params
      params.require(:request_book).permit(:name, :first_name, :last_name, :email)
    end
end
