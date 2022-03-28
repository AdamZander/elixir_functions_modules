# Reverse list elements
def reverse([h | t], acc) do # General case
reverse(t, [h | acc] )
end

def reverse([], acc) do
acc
end


end


#[1, 2, 3] []
#[2, 3]    [1 | [] ]
#[3] [2 | [1]]
#[]  [3 | [2, 1]]

#[h | t]
