class PublicationsController < ApplicationController

  def index
    @publications = Publication.all
  end

  def destroy
    publication_id = params[:id]
    Publication.find_by(publication_id).delete
  end

  def show
    publication_id = params[:id]
    p @publication = Publication.find_by_id(publication_id)
  end

  def new
    @publication_data = Publication.new
  end

  def create
    publication_id = params[:id]
    @publication = Publication.create(params
                                      .require(:publication)
                                      .permit(
                                        :name,
                                        :email,
                                        :mobile_number))
    if @publication
      render json: @publication, status: :created, location: @publication
    else
      render json: @publication.errors, status: :unprocessable_entity
    end
  end


  def edit
    publication_id = params[:id]
    @publication_edit = Publication.find_by_id(publication_id)
  end

  def update
    @publication_edit = Publication.find_by_id(params[:id])
    if @publication_edit.update_attributes(params
                              .require('publication')
                              .permit(:name, :email, :mobile_number))
      render json: @publication_edit
    else
      render json: @publication_edit.errors, status: :unprocessable_entity                      
    end                        
  end
end
