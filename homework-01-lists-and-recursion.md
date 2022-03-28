# Homework

## Lists

1. Create a new module named `ListUtils`. Inside the module create an exported function (`def`) named `avg_three/1`. The function takes a list of numbers as parameter and returns the average of the first three elements in the list.

2. Create a new function inside the `ListUtils` module. The function's name is `reverse/1`. It takes a list as parameter and returns a new list containing the elements of the original list in reverse order. Can you do that using recursion?

3. Create a new recursive function named `take/2`. The function takes two parameters: a list `ls` and a number `n`. It returns a new list containing the first `n` elements from the original list.
e.g. `take([4, 3, -1, 10, 7], 3)`, returns `[4, 3, -1]`.

4. Create a new recursive function named `contained/2`. It takes two parameters: a list and an arbitrary value. It returns whether the value is in the list or not.
e.g. `contained(["abc", 10, 0, "w", :ok, 3.2], "w")` returns `true`.

5. Create a new recursive function `nub/1` which takes a list and returns a new list where all duplicates are removed.
That essentially means that it discards all duplicates except for the first occurrence or it discards all duplicates except for the last occurrence.
e.g. `nub([2, 4, 2, 4, 6, 1, 2])` returns `[2, 4, 6, 1]`.
