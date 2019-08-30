class BooksController < ApplicationController

  before_action :find_book, only: [:show, :destroy, :edit, :update]

  def index
    @books = Book.all.includes(:editions)
  
  end

  def show
  end

  def new
    
  end

  def edit
    book_id = params['id']
    @book_edit = Book.find_by_id(book_id)
  end

  def update
  
    @book.update_attributes(params
                          .require('book')
                          .permit(:title, :author_name, :category, :language))
  end

  def create
    puts "\n\n #{params} \n \n"
    @book = Book.new
    @book.title = params["title"]
    @book.author_name = params["author_name"]
    @book.language = params["language"]
    @book.category = params["category"]
    puts "\n\n #{@book} \n \n"
    @book.save
  end

  def destroy
    @book.delete
    redirect_to '/books'
  end

  def find_book
    book_id = params[:id]
    @book = Book.find_by_id(book_id)
   # @book_edition = Book.joins("INNER JOIN editions ON editions.book_id = #{book_id}")
  end
end
