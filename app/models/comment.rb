class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :article

  validates :body, presence: true

  def timestamp
    "Commented #{created_at.strftime('%I:%M %p')} #{created_at.strftime('%b %-d, %Y')}"
  end
end
