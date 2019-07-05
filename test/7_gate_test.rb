# frozen_string_literal: true

# minitestライブラリ読み込み
require "minitest/autorun"

# rgb.rbを読み込み
require "./lib/7_gate"

class GateTest < Minitest::Test
  # 改札機プログラムのテスト
  def test_gate
    # 150円の切符をかって梅田で入場=>十三で出場　OK
    umeda = Gate.new(:umeda)
    juso = Gate.new(:juso)
    ticket = Ticket.new(150)
    umeda.enter(ticket)
    assert juso.exit(ticket)
  end

  def test_梅田から三国まで運賃不足
    # 150円の切符をかって梅田で入場=>三国で出場　NG
    umeda = Gate.new(:umeda)
    mikuni = Gate.new(:mikuni)
    ticket = Ticket.new(150)
    umeda.enter(ticket)
    refute mikuni.exit(ticket)
  end
end
