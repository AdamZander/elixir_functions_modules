defmodule ListProduct do
  def product([]) do
    1
  end
  
  def product([h | t]) do
    h * product(t)
  end
  
  def tail_product([], acc) do
    acc
  end
  
  def tail_product([h | t], acc) do
    tail_product(t , acc * h)
  end
  
end


tail_product([1, 2, 3], 1)

product([1, 2, 3])
1 * product([2, 3])
1 * 2 * product([3])
1 * 2 * 3 * product([])
1 * 2 * 3 * 1
