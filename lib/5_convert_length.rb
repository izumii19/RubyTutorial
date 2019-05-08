# frozen_string_literal: true
# coding: utf-8

# 単位変換プログラム
def convert_length(val, from, to)
  coef = { m: 1.0, ft: 3.28, in: 39.37 }

  ((val / coef[:"#{from}"]) * coef[:"#{to}"]).round(2)
end
