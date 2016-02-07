require 'pp'
require 'time'

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
    @list << Item.new(item)
    p "#{item} has been added to the list"
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
    puts @item = "#{@list[index].item} #{@list[index].status}"
    return @item
  end

  def completed_items
    complete_array = []
    @list.each do |item|
      if item.status == "[X]"
        complete_array << item.item
        # p "#{item.item} completed"
      else
        next
      end

    end
    p complete_array
  end

  # def newest_to_oldest
  #   #for @list.each do |item, index|
  #   # @list.sort { |a,b| b <=> a if a.created_at > b.created_at
  #   #   # if a.created_at > b.created_at
  #   #   #   b <=> a
  #   #   # else
  #   #   #   continue
  #   #   # end
  #   #} end
  # end

  # def sort_by_date(direction="ASC")
  #   sorted = @list.created_at.sort
  #   sorted.reverse! if direction == "DESC"
  #   sorted
  # end

  def sort_by_date
    # p thing = Time.new
    @list.each do |item|
      puts item.time
    end
  end


end



class Item

  attr_accessor :status, :item

  # def initialize(item, status="[ ]", created_at = Time.new)
  def initialize(item, status="[ ]")
    @status = status
    @item = "#{item}"
  end

end

