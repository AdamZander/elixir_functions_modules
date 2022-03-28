defmodule Person do
  defstruct name: "John", age: 30, shirt_size: :m

  def average_age([_h | _t] = ls) do
    Enum.reduce(ls, 0, fn %Person{age: x}, acc -> x + acc end) / length(ls)
  end

end
