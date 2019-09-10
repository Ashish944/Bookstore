class Edition < ApplicationRecord
  belongs_to :book
  belongs_to :publication
  has_many :feedback_tables , as: :sender

  validates :version, :count, :published_date, :cover_type, :no_of_pages, :price,
    :book_id, :publication_id, presence: true
  validates :cover_type ,inclusion: { in: ['Paper Back', 'Hard Cover'] }
  before_save :initialize_count

  def initialize_count
    self.count = 0 unless self.count
  end
end