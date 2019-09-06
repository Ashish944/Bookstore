class Edition < ApplicationRecord
  belongs_to :book
  belongs_to :publication
  has_many :feedbacks , as: :sender

  before_save :initialize_count

  def initialize_count
    self.count = 0 unless self.count
  end
end