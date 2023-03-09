def binary_search(array, target)
  low = 0
  high = array.length - 1

  while low <= high
    mid = (low + high) / 2

    if array[mid] == target
      return mid
    elsif array[mid] < target
      low = mid + 1
    else
      high = mid - 1
    end
  end

  nil
end
