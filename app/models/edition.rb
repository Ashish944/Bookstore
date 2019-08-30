class Edition < ApplicationRecord
  belongs_to :book
  belongs_to :publication
  has_many :feedbacks , as: :sender
end