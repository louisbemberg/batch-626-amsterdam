require 'sqlite3'
DB = SQLite3::Database.new('tasks.db')
DB.results_as_hash = true
require_relative 'task'

# READ
# p Task.all
# Task.find(1)

# CREATE
new_task = Task.new(title: "Livecode on friday is awesome" , description: "We are all happy")
new_task.save
new_task.done = true
new_task.save

# UPDATE
new_task.done = true
new_task.save

# DELETE
new_task.destroy
Task.destroy_of_choice(2)


# Classname.all
# Classname.find(1)
# instance.destroy
# instance.save
