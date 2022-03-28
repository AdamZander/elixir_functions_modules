defmodule Test do

  def total([], sum, acc) do
    sum / acc
  end

  def total(_ls, sum, 3) do
      sum / 3
  end

  def total([h|t], sum, acc) do
    total(t, h + sum, acc + 1)
  end
end
