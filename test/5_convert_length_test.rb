# frozen_string_literal: true

# minitestライブラリ読み込み
require "minitest/autorun"

# rgb.rbを読み込み
require "./lib/5_convert_length"

class ConvertLengthTest < Minitest::Test
  # 10 => 16進数のテスト
  def test_convert_length
    assert_equal 39.37, convert_length(1, :m, :in)
    assert_equal 0.38, convert_length(15, :in, :m)
    assert_equal 10670.73, convert_length(35000, :ft, :m)
  end
end
