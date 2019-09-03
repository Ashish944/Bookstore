class EditionSerializer < ActiveModel::Serializer
  attributes :id, :version, :published_date, :cover_type, :no_of_pages, :price, :count, :book_id, :publication_id
  has_one :book
  has_one :publication
end
