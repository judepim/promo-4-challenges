
def sum_with_while(min, max)
  sum = 0
  while min < max
    sum += min
    min +=1
  end
  sum += min
end


def sum_with_for(min, max)
  # CONSTRAINT: you should use a for..end structure
  sum = 0
  for x in (min..max)
    sum = x + sum
  end
  return sum
end

def sum_recursive(min, max)

  # CONSTRAINT: you should use a recursive algorithm, i.e. the method should call itself
end











