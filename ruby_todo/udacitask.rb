require_relative 'task_starter.rb'
require 'pp'

# Creates a new todo list
todo = TodoList.new('Stuff to do')

# Add four new items
todo.add_item('Buy Apples')
todo.add_item('Brush Teeth')
todo.add_item('Do Homework')
todo.add_item('Wash Car')
# Print the list
todo.print_list

# # Delete the first item
todo.delete_item(0)

# # Print the list
todo.print_list

# # Delete the second item
todo.delete_item(1)

# # Print the list
todo.print_list

# Update the completion status of the first item to complete

todo.completed?(0)
todo.completed(0)
todo.completed?(0)

# Print the list
todo.print_list

# Update the title of the list
todo.title = "Things to do"

# Print the list
todo.print_list