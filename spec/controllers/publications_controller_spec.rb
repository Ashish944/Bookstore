require 'rails_helper'
require 'factories/publications'
RSpec.describe PublicationsController, type: :controller do

  describe " #index" do
    it "#index should list all publications" do
      get :index        
      expect(response).to render_template(:index)
      expect(response).to have_http_status(200)
    end
  end

  describe ' #destroy' do
    it 'should delete publication record' do
      publication = FactoryBot.create(:publication)
      delete :destroy, params: { id: publication.id }
      expect(response).to have_http_status(200)
    end
  end

  describe " #show" do
    it "should find publication record" do
      publication = FactoryBot.create(:publication)
      get :show, params: { id: publication.id }
      expect(response).to have_http_status(200)
    end
  end

end
