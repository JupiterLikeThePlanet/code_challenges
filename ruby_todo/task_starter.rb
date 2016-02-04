class TodoList

  attr_accessor :list

  def intialize(args={})
    @list = []
  end

  def name_list(name)
    @name = name
  end

  def list_name
    p @name
  end

  def print_list
    p @name
    pp @list
  end

  def add_item(item)
    @list << Item.new(item)
  end

end




class Item

  attr_reader :item


  def initialize(item)
    @item = "[ ] " + item
    @status = false
  end

  def completed?
    @status
  end

  def completed(item)
    item = "[X] " + item
    return status = true
  end


end