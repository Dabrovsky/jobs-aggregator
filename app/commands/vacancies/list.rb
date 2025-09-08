# frozen_string_literal: true

module Vacancies
  class List < Command
    attribute :title, String
    attribute :location, String
    attribute :seniorities, Array
    attribute :contract_types, Array
    attribute :job_types, Array
    attribute :operating_modes, Array
    attribute :sort_field, String, default: :created_at
    attribute :sort_type, String, default: :asc

    def call
      scope = Vacancy.includes(:company)
      scope = scope
        .then { filter_title(it) }
        .then { filter_location(it) }
        .then { filter_seniorities(it) }
        .then { filter_contract_types(it) }
        .then { filter_job_types(it) }
        .then { filter_operating_modes(it) }
        .then { order_records(it) }

      success(scope)
    end

    private

    def filter_title(scope)
      return scope if title.blank?

      scope.where("title ILIKE ?", "%#{title}%")
    end

    def filter_location(scope)
      return scope if location.blank?

      scope.where("location ILIKE ?", "%#{location}%")
    end

    def filter_seniorities(scope)
      return scope if seniorities.blank?

      scope.where(seniority: seniorities)
    end

    def filter_contract_types(scope)
      return scope if contract_types.blank?

      scope.where(contract_type: contract_types)
    end

    def filter_job_types(scope)
      return scope if job_types.blank?

      scope.where(job_type: job_types)
    end

    def filter_operating_modes(scope)
      return scope if operating_modes.blank?

      scope.where(operating_mode: operating_modes)
    end

    def order_records(scope)
      return scope if sort_field.blank?

      scope.order(sort_field => sort_type)
    end
  end
end
