class TodoList

  attr_accessor :list

  def intialize(args={})
    @list = []
  end

  def name_list(name)
    @name = name
  end

  def list_name
    p "List Name: " @name
  end

  def print_list
    p "List Name: " + @name
    @list.each_with_index do |item,index|

  end

  def add_item(item)
    @list << Item.new(item)
    return @list
  end

  def delete_item(item)
  end

  def edit_item(item)
  end

  def completed?(index)
    if (@item.status = 'incomplete')
      return false
    else
      return true
  end

  def completed(index)
    @item = @item.index + " [X]"
    @status = 'completed'
  end

end




class Item

  attr_reader :item
  attr_accessor :status


  def initialize(item, status="incomplete")
    @item =  + " [ ]"
    @status = status
  end



end