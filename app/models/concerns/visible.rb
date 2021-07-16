module Visible
  extend ActiveSupport::Concern

  VALID_STATUSES = %w[public private archived].freeze

  included do
    validates :status, inclusion: { in: VALID_STATUSES }
  end

  class_methods do
    def public_count
      count = where(status: 'public').count
      "#{count} #{count > 1 ? 'articles' : 'article'}"
    end
  end

  def archived?
    status == 'archived'
  end
end
