require 'byebug'

def windowed_max_range(arr, w)
  curr_max_range = (arr[1]-arr[0]).abs
  # debugger
  for i in (0..arr.length-w)
    window =  arr[i...i+w]
    min, max = window.min, window.max
    range = max - min
    curr_max_range = range if range > curr_max_range
  end

  curr_max_range
end


def 

p windowed_max_range([1, 0, 2, 5, 4, 8], 3) #== 5 # 0, 2, 5
p windowed_max_range([1, 0, 2, 5, 4, 8], 4) #== 6 # 2, 5, 4, 8
p windowed_max_range([1, 0, 2, 5, 4, 8], 2) #== 4 # 4, 8
p windowed_max_range([1, 3, 2, 5, 4, 8], 5) #== 6 # 3, 2, 5, 4, 8