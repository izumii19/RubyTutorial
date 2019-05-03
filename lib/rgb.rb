# frozen_string_literal: true
# coding: utf-8

# 10=>16進数
def to_hex(vals)
  # 16進数に変換した値を保持
  rgb_vals = vals.map { |val|val.to_s(16).rjust(2, "0")}
  # 先頭に"#"追加
  "##{rgb_vals[0]}#{rgb_vals[1]}#{rgb_vals[2]}"
end

# 16=>10進数
def to_ints(vals)
  rgb_vals = vals[1..2], vals[3..4], vals[5..6]
  rgb_vals.map { |val| val.hex }
end
