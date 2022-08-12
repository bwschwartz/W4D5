class MyQueue
  def initialize
    @store = []
  end

  def enqueue(el)
    @store << el
  end

  def dequeue(el)
    @store.shift
  end

  def peek
    @store[0]
  end

  def size
    @store.length
  end

  def empty?
    @store.empty?
  end

end
