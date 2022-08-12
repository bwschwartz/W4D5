def bad_two_sum?(arr, target_sum) # n^2
  for i in (0...arr.length)
    for j in (i+1...arr.length)
      return true if arr[i] + arr[j] == target_sum
    end
  end
  false
end


def ok_two_sum?(arr, target_sum) # n*log(n)
  sorted_arr = arr.sort
  for i in (0...sorted_arr.length-1)
    return true if arr[i] + arr[i+1] == target_sum
    return false if arr[i] + arr[i+1] > target_sum
  end

end

def hash_two_sum?(arr, target_sum)
  hash_map = {}
  arr.each { |num| hash_map[num] = true }
  keys =  hash_map.keys
  for i in (0...keys.length-1)
    return true if keys[i] + keys[i+1] == target_sum
    return false if keys[i] + keys[i+1] > target_sum
  end
end


arr = [0, 1, 5, 7]
p hash_two_sum?(arr, 6) # => should be true
p hash_two_sum?(arr, 10) # => should be false