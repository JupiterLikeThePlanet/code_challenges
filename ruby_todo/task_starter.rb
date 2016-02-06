require 'pp'

class TodoList

  attr_accessor :list, :name

  def initialize(args={})
    @list = []
  end

  def name_list(name)
    @name = name
    return @name
  end

  def list_name
    p "List Name: " + @name
  end

  def print_list
    #p "List Name: " + @name
    @list.each_with_index do |item, index|
      pp ("(#{index})" + "#{item}")
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
    if (@item.status = 'incomplete')
      return false
    else
      return true
    end
  end

  def completed(index)
    @item = @item.index + " [X]"
    @status = 'completed'
  end

end



class Item

  #attr_reader :item
  attr_accessor :status, :item

  def initialize(item, status="incomplete")
    @item =  "#{item} [ ]"
    @status = status
  end

end


class Command_Line

  attr_accessor :todo

  def initialize
    @todo = TodoList.new
  end

  def enter_commands(command = nil, input = nil)
    case command
      when "name"
        @todo.name_list(input)
      when "print_name"
        @todo.list_name
      when "add"
        @todo.add_item(input)
      when "print"
        @todo.print_list
      when "delete"
        @todo.delete_item(input.to_i)
      when "complete"
        @todo.complete(input.to_i)
    end
  end

end


user = Command_Line.new
#p user.todo.add_item('apple')
user.enter_commands(ARGV[0], ARGV[1])