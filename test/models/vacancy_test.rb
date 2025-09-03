# frozen_string_literal: true

require "test_helper"

class VacancyTest < ActiveSupport::TestCase
  attr_reader :vacancy

  setup do
    @vacancy = create(:vacancy)
  end

  test "is valid" do
    assert vacancy.valid?
  end
end
