# Clear existing data
Todo.delete_all
User.delete_all

# Create a demo user
user = User.create!(email: 'demo@example.com', password: 'password')

# Create historic todos for the demo user
Todo.create!([
  {
    title: "Learn Ruby on Rails",
    description: "Complete the Rails tutorial and build a todo app",
    completed: false,
    user: user,
    created_at: 2.months.ago
  },
  {
    title: "Buy groceries",
    description: "Milk, eggs, bread, and vegetables",
    completed: true,
    user: user,
    created_at: 1.month.ago
  },
  {
    title: "Exercise",
    description: "Go for a 30-minute run in the park",
    completed: false,
    user: user,
    created_at: 10.days.ago
  },
  {
    title: "Read a book",
    description: "Finish reading 'The Pragmatic Programmer'",
    completed: false,
    user: user,
    created_at: 3.days.ago
  },
  {
    title: "Plan vacation",
    description: "Research destinations and book flights",
    completed: true,
    user: user,
    created_at: 6.months.ago
  }
])

puts "Created #{Todo.count} todos!"