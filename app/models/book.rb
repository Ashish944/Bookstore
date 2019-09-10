class Book < ApplicationRecord
  validates :title, :author_name, :language, :category, presence: true 

  has_many :editions
  has_many :publications, :through => :editions
  
end
