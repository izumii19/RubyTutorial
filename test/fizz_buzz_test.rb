# frozen_string_literal: true

# minitestライブラリ読み込み
require "minitest/autorun"

# fizz_buzz.rbを読み込み
require "../lib/fizz_buzz"

class FizzBuzzTest < Minitest::Test
  def test_fizz_buzz
    assert_equal "1", fizz_buzz(1)
    assert_equal "2", fizz_buzz(2)
    assert_equal "fizz", fizz_buzz(3)
  end
end
