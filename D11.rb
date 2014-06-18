# SECTION A

def permutations(arr)
  return [[]] if arr.empty?
  permutations = []

  arr.length.times do |i|
    element = arr[i]
    rest = arr.take(i) + arr.drop(i+1)
    
    perms_of_remaining = permutations(rest).map {|el| el.unshift(element) }
    permutations.concat(perms_of_remaining)
  end
  
  return permutations

end

p permutations([1, 2, 3]) # should equal 123, 132, 213, 231, 312, 321

# 2 MILES-- GET RID OF ONE CAR
# 100/48-- GET RID OF ANOTHER CAR
# 100/47-- GET RID OF THIRD CAR
# ETC.

# SECTION B

def cyclic?(first_link)
  set = Set.new
  
  current_link = first_link
  while å
  
end