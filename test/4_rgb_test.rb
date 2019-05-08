# frozen_string_literal: true

# minitestライブラリ読み込み
require "minitest/autorun"

# rgb.rbを読み込み
require "../lib/4_rgb"

class RGBTest < Minitest::Test
  # 10 => 16進数のテスト
  def test_rgb_to_hex
    assert_equal "#000000", to_hex(0, 0, 0)
    assert_equal "#ffffff", to_hex(255, 255, 255)
    assert_equal "#043c78", to_hex(4, 60, 120)
  end

  # 16 => 10進数のテスト
  def test_rgb_to_ints
    assert_equal [0, 0, 0], to_ints("#000000")
    assert_equal [255, 255, 255], to_ints("#ffffff")
    assert_equal [4, 60, 120], to_ints("#043c78")
  end
end