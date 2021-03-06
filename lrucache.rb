class LRUCache

attr_reader :store, :size

  def initialize(size)
    @store = []
    @size = size
  end

  def count
    @store.count
  end

  def add(el)
    if self.count == @size && !@store.include?(el)
      @store.shift
      @store.push(el)
    elsif @store.include?(el)
      @store.delete(el)
      @store.push(el)
    else
      @store.push(el)
    end
  end

  def show
    p @store
  end

  private
  # helper methods go here!

end

johnny_cache = LRUCache.new(4)

johnny_cache.add("I walk the line")
johnny_cache.add(5)

p johnny_cache.count
p johnny_cache.store

johnny_cache.add([1,2,3])
johnny_cache.add(5)
johnny_cache.add(-5)
johnny_cache.add({a: 1, b: 2, c: 3})
johnny_cache.add([1,2,3,4])
johnny_cache.add("I walk the line")
johnny_cache.add(:ring_of_fire)
johnny_cache.add("I walk the line")
johnny_cache.add({a: 1, b: 2, c: 3})

johnny_cache.show
