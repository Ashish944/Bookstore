class CommonUser < ApplicationRecord
  has_many :addresses
  has_many :branches
  has_many :feedback_tables
  has_many :feedback_tables , as: :sender
end
