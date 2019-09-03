class EditionsController < ApplicationController

  def index
    render json: Edition.all
  end

  def  new
    
  end

  def edit
    edition_id = params['id']
    @edition_edit = Edition.find_by_id(edition_id)
  end
  


  def show
    book_id = params[:id]
    @book = Book.find_by_id(book_id)
    @edition_id = Edition.find_by_id(book_id)
    @publication = @edition_id.publication
    render json: @edition_id
  end
  
  def update
    
  end
end
