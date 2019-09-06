class Book < ApplicationRecord
 # validates :title, :author_name, presence: true
 # validates :cover_type, inclusion: { in: ['Paperback', 'Hardcover'] }

  has_many :editions
  has_many :publications, :through => :editions
  
end
