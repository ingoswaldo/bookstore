class CommentsController < ApplicationController
  before_action :set_book
  before_action :set_comment, only: %i[ show edit update destroy ]

  def index
    @comments = @book.comments
  end

  def show
  end

  def new
    @comment = Comment.new
  end

  def edit
  end

  # POST /comments or /comments.json
  def create
    @comment = Comment.new(comment_params)
    @comment.book = @book

    if @comment.save
      redirect_to book_comments_url(@book, @comment), notice: "Comment was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @comment.update(comment_params)
      redirect_to book_comment_url(@book, @comment), notice: "Comment was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @comment.destroy

    redirect_to book_comments_url, notice: "Comment was successfully destroyed."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    def set_book
      @book = Book.find(params[:book_id])
    end

    # Only allow a list of trusted parameters through.
    def comment_params
      params.require(:comment).permit(:message, :approved, :user_id)
    end
end
