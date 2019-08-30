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
end
