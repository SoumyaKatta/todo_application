Todo.create!([
  {
    title: "Learn Ruby on Rails",
    description: "Complete the Rails tutorial and build a todo app",
    completed: false
  },
  {
    title: "Buy groceries",
    description: "Milk, eggs, bread, and vegetables",
    completed: true
  },
  {
    title: "Exercise",
    description: "Go for a 30-minute run in the park",
    completed: false
  },
  {
    title: "Read a book",
    description: "Finish reading 'The Pragmatic Programmer'",
    completed: false
  }
])

puts "Created #{Todo.count} todos!"