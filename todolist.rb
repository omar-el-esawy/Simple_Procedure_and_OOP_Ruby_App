class TodoList
    def initialize
      @tasks = []
    end
  
    def add_task(task)
      @tasks << task
    end
  
    def remove_task(task)
      @tasks.delete(task)
    end
  
    def print_tasks
      puts "Tasks:"
      @tasks.each do |task|
        puts "- #{task}"
      end
    end
  end
  
  class Task
    attr_reader :description
  
    def initialize(description)
      @description = description
    end
  
    def to_s
      @description
    end
  end
  
  # Usage example
  todo_list = TodoList.new
  
  task1 = Task.new("Buy groceries")
  task2 = Task.new("Do laundry")
  
  todo_list.add_task(task1)
  todo_list.add_task(task2)
  
  todo_list.print_tasks
  
  todo_list.remove_task(task1)
  
  todo_list.print_tasks
  