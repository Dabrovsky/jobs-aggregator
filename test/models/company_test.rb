# frozen_string_literal: true

require "test_helper"

class CompanyTest < ActiveSupport::TestCase
  attr_reader :company

  setup do
    @company = create(:company)
  end

  test "is valid" do
    assert company.valid?
  end

  test "name is required" do
    company.name = nil

    assert company.invalid?
  end
end
