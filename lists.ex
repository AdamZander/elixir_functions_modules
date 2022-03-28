defmodule Lists do
  def sum(ls) do
    # my_reduce - Higher Order Function (HOF)
    my_reduce(ls, 0, fn acc, x -> acc + x end)
  end

  def product(ls) do
    my_reduce(ls, 1, fn acc, x -> acc * x end)
  end

  # function clause
  def my_reduce([], acc, _func) do
    acc
  end

  def my_reduce([h | t], acc, func) do
    my_reduce(t, func.(acc, h), func)
  end

  
  # function clause (base case)
  def print([]) do
    :ok
  end

  # function clause (general case) Recursion Algo
  def print([h | t]) do
    IO.puts(h)
    print(t)
  end

  # function clause (base case)
  def recursive_sum([x]) do
    x
  end
  
  # function clause (general case) Recursion Algo
  def recursive_sum([h | t]) do
    h + recursive_sum(t)
  end
  
end

#Call Stack
recursive_sum([1, 2, 3])
1 + recursive_sum([2, 3]) #First recursive call
2 + recursive_sum([3])
3 
