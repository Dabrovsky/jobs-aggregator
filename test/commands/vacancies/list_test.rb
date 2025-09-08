# frozen_string_literal: true

require "test_helper"

module Vacancies
  class ListTest < ActiveSupport::TestCase
    setup do
      create_pair(:vacancy)
    end

    test "inherits from Command class" do
      assert_equal Command, List.superclass
    end

    test ".call returns an array as a response value" do
      output = List.call

      assert_equal 2, output.value.count
    end

    test ".call returns a response filtered by title" do
      vacancy = create(:vacancy, title: "Important")
      output = List.call(title: "Important")

      assert_equal 1, output.value.count
      assert_equal [vacancy], output.value
    end

    test ".call returns a response filtered by location" do
      vacancy = create(:vacancy, location: "Important")
      output = List.call(location: "Important")

      assert_equal 1, output.value.count
      assert_equal [vacancy], output.value
    end

    test ".call returns a response filtered by seniorities" do
      vacancy = create(:vacancy, seniority: "mid")
      output = List.call(seniorities: "mid")

      assert_equal 1, output.value.count
      assert_equal [vacancy], output.value
    end

    test ".call returns a response filtered by contract_types" do
      vacancy = create(:vacancy, contract_type: "intership")
      output = List.call(contract_types: "intership")

      assert_equal 1, output.value.count
      assert_equal [vacancy], output.value
    end

    test ".call returns a response filtered by job_types" do
      vacancy = create(:vacancy, job_type: "freelance")
      output = List.call(job_types: "freelance")

      assert_equal 1, output.value.count
      assert_equal [vacancy], output.value
    end

    test ".call returns a response filtered by operating_modes" do
      vacancy = create(:vacancy, operating_mode: "hybrid")
      output = List.call(operating_modes: "hybrid")

      assert_equal 1, output.value.count
      assert_equal [vacancy], output.value
    end
  end
end
