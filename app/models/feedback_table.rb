class FeedbackTable < ApplicationRecord

  belongs_to :sender, polymorphic: true
end
