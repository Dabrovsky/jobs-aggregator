# frozen_string_literal: true

require "test_helper"

class ResponseTest < ActiveSupport::TestCase
  test ".success builds a successful response with value" do
    response = Response.success("ok")

    assert response.success?
    refute response.failure?
    assert_equal "ok", response.value
  end

  test ".failure builds a failed response with value" do
    response = Response.failure("error")

    assert response.failure?
    refute response.success?
    assert_equal "error", response.value
  end
end
