class BinaryChop
  def initialize(array, target)
    @array = array
    @target = target
  end

  def binary_search
    return -1 if @array.empty? || !@array.include?(@target)

    low = 0
    high = @array.length - 1

    while low <= high
      mid = (low + high) / 2

      if @array[mid] == @target
        return mid
      elsif @array[mid] < @target
        low = mid + 1
      else
        high = mid - 1
      end
    end
  end
end
