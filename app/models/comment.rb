class Comment < ApplicationRecord
  def timestamp
    "Published #{created_at.strftime('%I:%M %p')} #{created_at.strftime('%b %-d, %Y')}"
  end

  belongs_to :article

  validates :name, presence: true
  validates :body, presence: true
end
