defmodule ListsUtils do
  def my_sum(ls) do
    Enum.reduce(ls, 0, fn x, acc -> x + acc end)
  end

  @spec my_sum2(list(number)) :: number()
  def my_sum2(ls) do
    # Function capturing. &1 and &2 = body of function, e.g. x + acc.
    Enum.reduce(ls, 0, &(&1 + &2))
  end

  # Sum specified number of elements in list
  # Base case when list is empty
  def sum_elem([], sum, _acc) do
    sum
  end

  # Second base case
  def sum_elem(_ls, sum, 0) do
    sum
  end

  # General case
  def sum_elem([h | t], sum, acc) do
    sum_elem(t, h + sum, acc - 1)
  end

  # Returns average of first three elements in list
  def avg_three(ls) do
    sum_elem(ls, 0, 0) / 3
  end

  # Reverse list elements
  # General case
  def reverse([h | t], acc) do
    reverse(t, [h | acc])
  end

  def reverse([], acc) do
    acc
  end

  def reverse(ls) do
    reverse(ls, [])
  end

  # Return a new list containing the first `n` elements from the original list
  # e.g. `take([4, 3, -1, 10, 7], 3)`, returns `[4, 3, -1]`
  def take(ls, n) do
    take_n(ls, n, [])
  end

  def take_n(_ls, 0, acc) do
    reverse(acc)
  end

  def take_n([], _n, acc) do
    reverse(acc)
  end

  def take_n([h | t], n, acc) do
    take_n(t, n - 1, [h | acc])
  end

  # Returns whether the value is in the list or not.
  # e.g. `contained(["abc", 10, 0, "w", :ok, 3.2], "w")` returns `true`.

  # Adam's solution. Learned how to use recursion and conditional exp. together.
  def contained?([], _val) do
    false
  end

  def contained?([h | t], val) do
    if h == val do
      true
    else
      contained?(t, val)
    end
  end

  # Rodica's solution. Better?
  def contained1?([], _val) do
    false
  end

  def contained1?([val | t], val) do
    true
  end

  def contained1?([_h | t], val) do
    contained1?(t, val)
  end

  # Takes a list and returns a new list where all duplicates are removed
  # E.g. `nub([2, 4, 2, 4, 6, 1, 2])` returns `[2, 4, 6, 1]`

  # Create new ls in acc, test if 'h' is in acc i.e. h in acc.
  # If is NOT in ls, add it, if it IS in do not add it. Do this for every 'h' element.

  def num(ls) do
    remove_dup(ls, [])
  end

  def remove_dup([], acc) do
    reverse(acc)
  end

  def remove_dup([h | t], acc) do
    if contained1?(acc, h) == false do
      remove_dup(t, [h | acc])
    else
      remove_dup(t, acc)
    end
  end
end
