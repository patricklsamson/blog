class Article < ApplicationRecord
  belongs_to :user

  extend FriendlyId
  friendly_id :title, use: :slugged

  scope :most_recent, -> { order(id: :desc) }

  def should_generate_new_friendly_id?
    title_changed?
  end

  def timestamp
    "Published by #{user.username} at #{created_at.strftime('%I:%M %p')} #{created_at.strftime('%b %-d, %Y')}"
  end

  include Visible

  has_many :comments, dependent: :destroy

  validates :title, presence: true,
                    uniqueness: true

  validates :body, presence: true,
                   length: { minimum: 10 }
end
