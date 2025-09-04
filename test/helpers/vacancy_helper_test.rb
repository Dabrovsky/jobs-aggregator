# frozen_string_literal: true

require "test_helper"

class VacancyHelperTest < ActionView::TestCase
  include VacancyHelper

  test ".salary_range returns formatted correctly text" do
    assert_equal "0 - 100 USD", salary_range(0, 100, "USD")
  end

  test ".salary_range returns default values" do
    assert_equal "0 - 0 USD", salary_range
  end
end
