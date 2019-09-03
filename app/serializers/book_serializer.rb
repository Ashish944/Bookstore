class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :category, :language
  has_many :editions

end
