require 'rails_helper'
require 'factories/books'
RSpec.describe BooksController, type: :controller do
  describe "GET books methods" do

    before(:each) do
      @book = FactoryBot.create(:book)  
    end
    
    
    it "#index should list all books" do
      get :index        
      expect(response).to render_template(:index)
      expect(response).to have_http_status(200)
    end
    
    it "#new" do
      get :new
      expect(response).to have_http_status(200)
      expect(response).to render_template(:new)
    end

    it "#show" do
      get :show, params: {id: @book.id}
      expect(response).to have_http_status(200)
      expect(response).to render_template(:show)
    end 

    it "#edit" do
      get :edit, params: {id: @book.id}
      expect(response).to have_http_status(200)
      expect(response).to render_template(:edit)
    end

  end

  describe ' #destroy' do
    it 'should delete book record' do
      book = FactoryBot.create(:book)
      delete :destroy, params: { id: book.id }
      expect(response).to have_http_status(302)
      expect(response).to redirect_to(books_path)
    end
  end

  describe ' #update' do
    it "should update book record" do
      book = FactoryBot.create(:book)
      updated_attributes = FactoryBot.attributes_for(:book)
      patch :update, params: { book: updated_attributes, id: book.id }
      expect(book.reload.title).to eq(updated_attributes[:title])
    end
  end
 
  describe " #show" do
    it "should find book record" do
      book = FactoryBot.create(:book)
      get :show, params: { id: book.id }
      expect(response).to have_http_status(200)
    end
  end


  describe " #create" do
    it "should create new book" do
      book = FactoryBot.build(:book)
      post :create, params: FactoryBot.attributes_for(:book)
      expect(response).to have_http_status(201)
    end
  end
end
