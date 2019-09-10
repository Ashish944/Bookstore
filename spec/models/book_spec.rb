require 'rails_helper'
require 'factories/books'
RSpec.describe Book, type: :model do
  
  before(:each) do
    @book = FactoryBot.build(:book)
  end

  it 'title should be present' do
    @book.title = nil
    expect(@book).to_not be_valid
  end

  it 'category should be present' do
    @book.category = nil
    expect(@book).to_not be_valid
  end

  it 'author name should be present' do
    @book.author_name = nil
    expect(@book).to_not be_valid
  end

  it 'language should be present' do
    @book.language = nil
    expect(@book).to_not be_valid
  end

  describe "Associations" do
    it { should have_many(:editions) }
    it { should have_many(:publications) }
  end
end