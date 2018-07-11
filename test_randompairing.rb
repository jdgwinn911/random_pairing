require "minitest/autorun"
require_relative "randompairing.rb"

class RandomPairing < Minitest::Test
    def test_that_names_are_array
        names = "billy", "fredward", "breadward", "peter", "zatch"
        assert_equal(Array, pairing_names(names).class)
    end

    def test_that_array_has_been_shuffled
        refute_equal(["billy", "fredward", "breadward", "peter", "zatch"], pairing_names(["billy", "fredward", "breadward", "peter", "zatch"]))
    end

    def test_that_array_has_been_sliced
        refute_equal([["billy", "fredward"], ["breadward", "peter", "zatch"]], pairing_names(["billy", "fredward", "breadward", "peter", "zatch"]))
    end

    def test_that_odd_name_out_gets_shoved_into_existing_array
        refute_equal([["fredward", "billy"], ["zatch", "breadward", "peter"]], pairing_names(["billy", "fredward", "breadward", "peter", "zatch"]))
    end





end
