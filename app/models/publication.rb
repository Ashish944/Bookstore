class Publication < ApplicationRecord
  has_many :editions
  has_many :books, :through => :edition
  has_many :feedbacks , as: :sender
end
