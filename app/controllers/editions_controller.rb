class EditionsController < ApplicationController

#  def index
#    render json: Edition.all
#  end

  def  new
    @edition_data = Edition.new
  end

  def edit
   
    @edition_edit = Edition.find_by_id(params[:id])
  end
  


  def show
    book_id = params[:id]
    @book = Book.find_by_id(book_id)
    @edition_id = Edition.find_by_id(book_id)
    @publication = @edition_id.publication
   # render json: @edition_id
  end
  
  def update
    edition_edit = Edition.find_by_id(params[:id])
    if edition_edit.update_attributes(params
                                .require('edition')
                                .permit(:version, :published_date, :cover_type,
                                :no_of_pages, :price, :count, 
                                :publication_id)
                              )
    else
   #   render json: @article.errors, status: :unprocessable_entity                      
    end              
  end

  def create
    puts "In create method Edition Controller"
    @book = Book.find_by_id(params[:book_id])
    @edition = @book.editions.create(params
                                      .require('edition')
                                      .permit(:version, :published_date, :cover_type,
                                       :no_of_pages, :price, :count, 
                                       :publication_id)

                                      )
    p @edition.errors
  end

  def destroy
    @edition = Edition.find_by_id(params[:id])
    @edition.delete
    redirect_to "/books/#{params[:book_id]}"
  end
end
