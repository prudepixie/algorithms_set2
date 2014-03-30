class MyHash
  attr_accessor :array
  def initialize

    @array = Array.new(64)
  end

  def find_index(key)
    key.hash%8
  end

  def []=(key, value)
    index = find_index(key)
    @array[index]= value
  end

  def [](key)
    index = find_index(key)
    @array[index]
  end
end
