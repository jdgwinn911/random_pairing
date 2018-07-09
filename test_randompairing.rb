require "minitest/autorun"
require_relative "randompairing.rb"

class RandomPairing < Minitest::Test
    def test_that_array_is_an_array
        assert_equal(Array, names().class)
    end
end
