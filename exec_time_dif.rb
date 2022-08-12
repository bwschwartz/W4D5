require 'byebug'

def my_min(arr)
  min = 100000000000000
  for i in (0...arr.length)
    smallest = true
    for j in (0...arr.length)
      smallest = false if arr[i] > arr[j]
    end
    return arr[i] if smallest
  end

end

#  n^2

def my_min(arr)
  min = 100000000000000
  for i in (0...arr.length)
    min = arr[i] if arr[i] < min
  end
  min
end

# n

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min(list)  # =>  -5


def largest_contiguous_sum(arr)
  subs = []
  for i in (0...arr.length)
    for j in (i...arr.length)
      subs << arr[i..j]
    end
  end  #n^2

  subs.map!{ |sub| sub.sum }.sort[-1] #n^2

end


def largest_contiguous_sum(arr)
  max, curr = arr[0], arr[0]

  arr.drop(1).each do |num|
    if max < 0
      max, curr = num, num if num > max
    else
      curr = [num + curr, 0].max
      max = curr if curr > max
    end
  end
  max
end

list = [-10, -2, -3, 203, -200, 400, -20]

p largest_contiguous_sum(list)