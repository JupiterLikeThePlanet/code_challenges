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
      else
        next
      end

    end
    p "Completed items: #{complete_array}"
  end


  def add_tag(index, tag)
    item = @list[index]
    item.tag = tag
    p "#{item.tag} tag was added to #{item.item}"
    return item.tag
  end

  def filter_by_tag(tag)
    filtered_array = []
    @list.each do |item|
      if item.tag == tag
        filtered_array << item.item
      else
        next
      end
    end
    p "Items with the tag '#{tag}': #{filtered_array}"
  end

end


class Item

  attr_accessor :status, :item, :tag

  def initialize(item, status="[ ]", tag=" ")
    @status = status
    @item = "#{item}"
    @tag = tag
  end

end

