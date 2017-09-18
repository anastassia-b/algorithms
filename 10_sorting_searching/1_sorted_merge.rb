# You are given two sorted arrays, A and B, where A has large enough buffer
# at the end to hold B. Write a method to merge B into A in sorted order.

def merge(a, b)
  sorted = [];
  while (a.length > 0 && b.length > 0)
    if a[0] < b[0]
      sorted << a.shift
    else
      sorted << b.shift
    end
  end

  sorted.concat(a).concat(b)
end

puts(merge([1, 3, 4, 10], [2, 5, 6]) == [1, 2, 3, 4, 5, 6, 10])
puts(merge([10, 15, 20], [2, 5, 6]) == [2,5, 6, 10, 15, 20])

# It's like the merge part of merge-sort.

# Notes
# Try moving from the end of the array to the beginning.
# Since we know A has buffer, we don't need to allocate additional space.
# Simply compare elements and insert them in order. Check!
# Think additional part about inserting elements into the back of A instead of creating
# A totally new array. Saves on space complexity.
