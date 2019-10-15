def join_ingredients(src)
  # Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
  #
  # Build a new Array that contains strings where each pair of foods is
  # inserted into this template:
  #
  # "I love (inner array element 0) and (inner array element 1) on my pizza""
  # As such, there should be a new String for each inner array, or pair
  
  new_array = []
  src.length.times { |i|
    new_array[i] = "I love #{src[i][0]} and #{src[i][1]} on my pizza"
  }
  new_array
end

def find_greater_pair(src)
  new_array = []
  src.length.times { |i| 
    if src[i][0] > src[i][1]
      new_array[i] = src[i][0]
    else
      new_array[i] = src[i][1]
    end
  }
  new_array
end

def total_even_pairs(src)
  total = 0
  src.length.times {|i|
    if src[i][0].even? && src[i][1].even?
      total += (src[i][0] + src[i][1])
    end
  }
  total
end
