class Comment < ApplicationRecord
  def timestamp
    "Published #{created_at.strftime('%I:%M %p')} #{created_at.strftime('%b %-d, %Y')}"
  end

  include Visible
  belongs_to :article
end
