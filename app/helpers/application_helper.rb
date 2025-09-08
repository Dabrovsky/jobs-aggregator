# frozen_string_literal: true

module ApplicationHelper
  def active_filters
    filter_keys = %w(seniorities contract_types job_types operating_modes)
    (filter_keys & params.keys).size
  end
end
