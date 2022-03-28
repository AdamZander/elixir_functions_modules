defmodule Numbers do
  def my_max(x, y) do
    if(x > y) do
      x
    else
      y
    end
  end

  def my_max(a, b, c) do # my_max same value as my_max_2
    my_max(my_max(a, b), c)
   end

   def my_max_2(a, b, c) do # Same value as my_max
    my_max(a, b)
    |>  my_max(c)
   end

end
