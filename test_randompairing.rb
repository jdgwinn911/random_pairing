require "minitest/autorun"
require_relative "randompairing.rb"

class RandomPairing < Minitest::Test
    def test_that_names_are_array
        names = "billy", "fredward", "breadward", "peter", "zatch"
        assert_equal(Array, pairing_names(names).class)
    end





end
