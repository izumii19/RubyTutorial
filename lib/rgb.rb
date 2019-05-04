# frozen_string_literal: true
# coding: utf-8

# 10=>16進数
def to_hex(r, g, b)
  hex = "#"
  # 16進数に変換した値を保持
  [r, g, b].each { |val|
    hex += val.to_s(16).rjust(2, "0")
  }
  hex
end

# 16=>10進数
def to_ints(color_code)
  rgb = color_code[1..2], color_code[3..4], color_code[5..6]
  rgb.map { |n|
    n.to_i(16)
  }
end
