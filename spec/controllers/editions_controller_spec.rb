require 'rails_helper'
require 'factories/books'
require 'factories/editions'
require 'factories/publications'

RSpec.describe EditionsController, type: :controller do
  describe "GET editions methods" do

    before(:all) do
      @edition = FactoryBot.create(:edition)
     
    end

    it " #new" do
      get :new, params: {book_id: @edition.book_id }
      expect(response).to have_http_status(200)
    end

    it " #show" do
      get :show, params: {book_id: @edition.book_id, id: @edition.id }
      expect(response).to have_http_status(200)
    end 

    it " #edit" do
      get :edit, params: {book_id: @edition.book_id, id: @edition.id}
      expect(response).to have_http_status(200)
    end

  end

  describe ' #destroy' do
    it 'should delete edition record' do
      edition = FactoryBot.create(:edition)
      delete :destroy, params: { id: edition.id, book_id: edition.book_id }
      expect(response).to have_http_status(302)
    end
  end

  describe ' #update' do
    it "should update book record" do
      edition = FactoryBot.create(:edition)
      updated_attributes = FactoryBot.attributes_for(:edition)
      patch :update, params: { edition: updated_attributes,
                               id: edition.id, 
                               book_id: edition.book_id }
      expect(edition.reload.version).to eq(updated_attributes[:version])
    end
  end
 
  describe " #show" do
    it "should find edition record" do
      edition = FactoryBot.create(:edition)
      get :show, params: { book_id: edition.book_id, id: edition.id }
      expect(response).to have_http_status(200)
    end
  end


  describe " #create" do
    it "should create new edition" do
      edition = FactoryBot.create(:edition)

      post :create, params: { edition: edition.attributes, 
                              book_id: edition.book_id,
                              publication_id: edition.publication_id  
                              }
      expect(response).to have_http_status(201)
    end
  end
end
