module Visible
  extend ActiveSupport::Concern

  VALID_STATUSES = %w[Public Archived].freeze

  included do
    validates :status, inclusion: { in: VALID_STATUSES }
  end

  class_methods do
    def public_count
      where(status: 'Public').count
    end

    def archived_count
      where(status: 'Archived').count
    end
  end

  def archived?
    status == 'Archived'
  end
end
