require 'rails_helper'

RSpec.describe Edition, type: :model do
 describe 'before initialize' do
  it 'default count equal to zero' do
    book =  Edition.create(publication_id: 2,book_id:2)
    expect(book.count).to eq 0
  end

  it 'set count if provided' do
    book = Edition.create(publication_id: 2,book_id:2,count: 2)
    expect(book.count).to eq 2
  end
end
end
