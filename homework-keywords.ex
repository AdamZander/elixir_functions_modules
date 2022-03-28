defmodule Keywords do

  def greetings(name, opts \\ []) do
    if opts != [] do
      "Good " <> opts[:moment] <> " #{name}! " <> "It's a " <> opts[:weather] <> " day."
      else
        "Hello #{name}!"
    end
  end

  def my_greetings(name, opts \\ []) do
    case  opts do
      [{:weather, "sunny"}, {:moment, "afternoon"}, _] -> # Create function clauses to elimatate
        "Good " <> opts[:moment] <> " #{name}! " <> "It's a " <> opts[:weather] <> " day."
      [{:weather, "sunny"}, {:moment, "afternoon"}] ->
        "Good " <> opts[:moment] <> " #{name}! " <> "It's a " <> opts[:weather] <> " day."
      [{:moment, "morning"}] ->
        "Good " <> opts[:moment] <> " #{name}!"
      [] ->
        "Hello #{name}!"
    end
  end

end

# Example 1
#greetings("Adam", [{:weather, "sunny"}, {:moment, "afternoon"}])
#greetings("Adam", [{weather: "sunny"}, {moment: "afternoon"}])
#greetings("Adam", weather: "sunny", moment: "afternoon") # Keywords.greetings/2

# Output
#"Good afternoon, Adam! It's a sunny day"

# Example 2
#greetings("Adam") # Keywords.greetings/2

# Output
#"Hello, Adam"

# Example 3
#greetings("Adam", moment: "morning")

#Output
#"Good morning, Adam"

#greetings("Adam", [{:weather, "sunny"}, {:moment, "afternoon"}, {:abc, 123}]) # ignores {:abc, 123}
