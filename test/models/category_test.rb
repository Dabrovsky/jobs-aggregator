# frozen_string_literal: true

require "test_helper"

class CategoryTest < ActiveSupport::TestCase
  attr_reader :category

  setup do
    @category = create(:category)
  end

  test "is valid" do
    assert category.valid?
  end

  test "name is required" do
    category.name = nil

    assert category.invalid?
  end
end
