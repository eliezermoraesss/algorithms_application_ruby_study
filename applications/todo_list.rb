tasks = []

def add_task(tasks, task)
    tasks << task
    puts "\nTask added: #{task}"
end

def remove_task(tasks, task)
    if tasks.delete(task)
        puts "\nTask removed: #{task}"
    else
        puts "\nTask not found: #{task}"
    end
end

def list_tasks(tasks)
    puts "\nTasks:"
    tasks.each_with_index do |task, index|
        puts "#{index + 1}. #{task}"
    end
end

loop do
    puts "\n1. Add Task"
    puts "2. Remove Task"
    puts "3. List Tasks"
    puts "4. Exit\n"
    choice = gets.chomp.to_i

    case choice
    when 1
        puts "\nEnter task to add:"
        task = gets.chomp
        add_task(tasks, task)
    when 2
        puts "\nEnter task to remove:"
        task = gets.chomp
        remove_task(tasks, task)
    when 3
        list_tasks(tasks)
    when 4
        break
    else
        puts "Invalid choice\n"
    end
end
