require_relative 'fixed_array'

class ArrayList
  attr_reader :array

  def initialize(fixed_array)
    @array = fixed_array
  end

  def add(element)
    new_array = FixedArray.new(@array.size * 2)
    new_array.set(@array.size, element)
    third_array = FixedArray.new(1, new_array)
    # new_array.slice!(@array.size + 2, -1)
    @array = new_array
  end

  def get(index)
  end

  def set(index, element)
  end

  def size
  end

end

array = ArrayList.new(FixedArray.new)
array.add("yes")
p array
