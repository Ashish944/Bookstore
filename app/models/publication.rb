class Publication < ApplicationRecord
  has_many :editions
  has_many :books, :through => :editions
  has_many :feedback_tables , as: :sender

  attr_accessor :mobile_number
  validates :name, :email, :mobile_number, presence: true
  validates :mobile_number, length: {is: 10}

  after_create :remove_spaces

  def remove_spaces
    self.mobile_number = self.mobile_number.gsub(" ","")
  end
end
