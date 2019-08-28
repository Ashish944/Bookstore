class Book < ApplicationRecord
  validates :title, :author_name, :cover_type, presence: true
  validates :cover_type, inclusion: { in: ['Paperback', 'Hardcover'] }

  has_many :editions

  before_save :initialize_count

  def initialize_count
    self.count = 0 unless self.count
  end
end
