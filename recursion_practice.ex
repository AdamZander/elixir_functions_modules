defmodule RecursionPractice do
  # base case
  def hello_world(_msg, 0) do
    :ok
  end

  # general case
  def hello_world(msg, n) do
    IO.puts(msg)
    hello_world(msg, n - 1)
  end
end
