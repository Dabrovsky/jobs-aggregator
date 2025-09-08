# frozen_string_literal: true

require "test_helper"

class CommandTest < ActiveSupport::TestCase
  test ".call raises NotImplementedError" do
    input = {}

    assert_raises(NotImplementedError) do
      Command.call(**input)
    end
  end
end
