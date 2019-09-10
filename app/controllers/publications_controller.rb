class PublicationsController < ApplicationController

  def index
    @publications = Publication.all
  end

  def destroy
    publication_id = params[:id]
    Publication.find_by(publication_id).destroy
  end

  def show
    publication_id = params[:id]
    @publication = Publication.find_by(publication_id)
  end

  def new
    
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
end
