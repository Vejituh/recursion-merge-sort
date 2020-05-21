def merge_sort(array)
n = array.length
if n > 1
  array_b = merge_sort(array.slice(0, (n/2)))
  array_c = merge_sort(array.slice((n/2),n))
  merge(array_b,array_c)
else
  return array
end
end

def merge(array_b,array_c)
merged_array = []
until array_b.length == 0 || array_c.length == 0
  if array_b[0] > array_c[0]
    x = array_c.shift()
    merged_array << x
  else
    x = array_b.shift()
    merged_array << x
  end
end
    if array_b.empty?
      merged_array << array_c
    elsif array_c.empty?
      merged_array << array_b
    end
  merged_array.flatten!
end

p merge_sort([5,8,2,8,1,3,0,9,2])