# frozen_string_literal: true

require "test_helper"

class JobsControllerShowTest < ActionDispatch::IntegrationTest
  attr_reader :vacancy

  setup do
    @vacancy = create(:vacancy)
  end

  test "GET /show" do
    get jobs_path(vacancy)
    assert_response :success
  end
end
