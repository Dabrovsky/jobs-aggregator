# frozen_string_literal: true

require "test_helper"

class JobsControllerIndexTest < ActionDispatch::IntegrationTest
  test "GET /index" do
    get jobs_path
    assert_response :success
  end
end
