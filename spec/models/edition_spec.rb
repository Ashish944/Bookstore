require 'rails_helper'
require 'factories/editions'
RSpec.describe Edition, type: :model do
  describe 'before initialize' do
    before(:each) do
      @edition = FactoryBot.build(:edition)
    end
   
    it 'version should be present' do
      @edition.version = nil
      expect(@edition).to_not be_valid
    end
  
    it 'cover_type should be present' do
      @edition.cover_type = nil
      expect(@edition).to_not be_valid
    end
  
    it 'published date should be present' do
      @edition.published_date = nil
      expect(@edition).to_not be_valid
    end
  
    it 'no_of_pages should be present' do
      @edition.no_of_pages = nil
      expect(@edition).to_not be_valid
    end
    it 'price should be present' do
      @edition.price = nil
      expect(@edition).to_not be_valid
    end
  
    it 'book_id should be present' do
      @edition.book_id = nil
      expect(@edition).to_not be_valid
    end
  
    it 'publication_id should be present' do
      @edition.publication_id = nil
      expect(@edition).to_not be_valid
    end 

    it 'count should be present' do
      @edition.count = nil
      expect(@edition).to_not be_valid
    end 
  end

  describe "Associations" do
    it { should belong_to(:book) }
    it { should belong_to(:publication) }
    it { should have_many(:feedback_tables)}
  end
end
