# frozen_string_literal: true

module VacancyHelper
  def salary_range(salary_from = 0, salary_to = 0, salary_currency = "USD")
    opts = { precision: 0, unit: "", delimiter: " " }
    from = number_to_currency(salary_from, **opts)
    to = number_to_currency(salary_to, **opts)

    "#{from} - #{to} #{salary_currency}"
  end
end
