# Todo App

A Ruby on Rails application for managing personal todo items with user authentication.

## Features
- User registration (sign up), login, and logout
- Each user sees only their own todos
- Todos grouped by month and status (pending/completed)
- Add, view, toggle, and delete todos
- Responsive and styled UI

## Setup Instructions

### Prerequisites
- Ruby 3.x
- Rails 7.x
- PostgreSQL
- Bundler

### Getting Started
1. **Clone the repository:**
   ```sh
   git clone <repo-url>
   cd todo_app
   ```
2. **Install dependencies:**
   ```sh
   bundle install
   ```
3. **Set up the database:**
   ```sh
   rails db:create db:migrate
   ```
4. **Start the Rails server:**
   ```sh
   rails server
   ```
5. **Visit the app:**
   Open [http://localhost:3000](http://localhost:3000) in your browser.

### Usage
- Sign up for a new account or log in.
- Add todos, view details, toggle completion, and delete as needed.
- Todos are grouped by month and status for easy organization.

### Gems Used
- `bcrypt` for secure password authentication
- `pg` for PostgreSQL database

### Notes
- Only logged-in users can access todos.
- Each todo is associated with the user who created it.

---
Feel free to contribute or customize as needed!
