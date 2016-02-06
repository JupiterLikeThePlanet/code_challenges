require_relative 'task_starter.rb'
require 'pp'

# Creates a new todo list
user = Command_Line.new


# Add four new items
user.todo.add_item('Buy Apples')
user.todo.add_item('Brush Teeth')
user.todo.add_item('Brush Hair')
user.todo.add_item('Wash Car')
# Print the list
user.todo.print_list

# # Delete the first item
user.todo.delete_item(0)

# # Print the list
user.todo.print_list

# # Delete the second item
user.todo.delete_item(1)

# # Print the list
user.todo.print_list

# Update the completion status of the first item to complete

user.todo.completed?(0)
user.todo.completed(0)
user.todo.completed?(0)

# Print the list

# Update the title of the list

# Print the list
