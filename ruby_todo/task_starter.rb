require 'pp'

class TodoList

  attr_accessor :list, :title

  def initialize(title)
    @title = title
    @list = []
  end

  def print_list
    p "List Title: #{@title}"
    @list.each_with_index do |item, index|
      # index = index + 1
      pp ("(#{index}) #{item.item} #{item.status}" )
    end
  end

  def add_item(item)
    p "#{item} has been added to the list"
    @list << Item.new(item)
    #print_list
    return @list

  end

  def delete_item(index)
    @list.delete_at(index)
    return @list
  end

  def completed?(index)
    if @list[index].status == "[ ]"
      p false
      return false
    else
      p true
      return true
    end
  end

  def completed(index)
    @list[index].status = "[X]"
    puts item = "#{@list[index].item} #{@list[index].status}"
  end

end



class Item

  attr_accessor :status, :item

  def initialize(item, status="[ ]")
    @status = status
    @item = "#{item}"
  end

end


