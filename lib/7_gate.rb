# frozen_string_literal: true
# coding: utf-8

# ゲートクラス
class Gate
  STATIONS = [:umeda, :juso, :mikuni]
  PRICE = [150, 190]

  def initialize(name)
    @name = name
  end

  def enter(ticket)
    ticket.stamp(@name)
  end

  def exit(ticket)
    price = calc_price(ticket)
    price <= ticket.price
  end

  def calc_price(ticket)
    from = STATIONS.index(ticket.stamped_at)
    to = STATIONS.index(@name)
    distance = to - from
    PRICE[distance - 1]
  end

end

# チケットクラス
class Ticket
  attr_reader :price, :stamped_at
  def initialize(price)
    @price = price
  end

  def stamp(name)
    @stamped_at = name
  end
end
