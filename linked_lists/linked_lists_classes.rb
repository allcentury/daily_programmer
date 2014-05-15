require 'pry'
class Entry
  attr_accessor :next, :data
  def initialize(data)
    @next = nil
    @data = data
  end
end

class List
  attr_accessor :name

  def initialize
    @head = nil
    @tail = nil
  end

  def ptq(entry)
    if @head.nil?
      @head = entry
      @tail = entry
    else
      entry.next = @head
      @head = entry
    end
  end

  def pbq(entry)
    if @head.nil?
      @head = entry
      @tail = entry
    else
      @tail.next = entry
      @tail = entry
    end
  end

  def rtq
    return nil if @head.nil?
    entry = @head
    @head = @head.next
    return entry
  end
end

list = List.new
cell1 = Entry.new(1)
cell2 = Entry.new(2)
cell3 = Entry.new(3)
list.ptq(cell1)
list.ptq(cell2)
list.ptq(cell3)
cell4 = Entry.new(4)
cell5 = Entry.new(5)
cell6 = Entry.new(6)
list.pbq(cell4)
list.pbq(cell5)
list.pbq(cell6)
puts list.rtq.data #should be 3
