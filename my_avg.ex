defmodule MyAvg do

  # Sums all element in list and then returns average
  def sum_elem(ls) do
    sum_elem(ls, 0)
  end

  defp sum_elem([], sum) do # Base case when list is empty
    sum
  end

  defp sum_elem([h | t], sum) do # General case
    sum_elem(t, h + sum)
  end

  def count(ls) do
    count(ls, 0)
  end

  defp count([], acc) do
    acc
  end

  defp count([h | t], acc) do
    count(t, acc + 1)
  end

   # Average all elements in a list
  def my_avg(ls) do
    sum_elem(ls) / count(ls)
  end

end
