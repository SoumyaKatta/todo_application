class TodosController < ApplicationController
  before_action :require_login
  before_action :set_todo, only: [:show, :edit, :update, :destroy, :toggle]

  def index
    @todos = current_user.todos.order(created_at: :desc)
    @pending_todos = @todos.pending
    @completed_todos = @todos.completed
    @pending_todos_by_month = @pending_todos.group_by { |todo| todo.created_at.strftime('%B %Y') }
    @completed_todos_by_month = @completed_todos.group_by { |todo| todo.created_at.strftime('%B %Y') }
  end

  def show
  end

  def new
    @todo = current_user.todos.new
  end

  def create
    @todo = current_user.todos.new(todo_params)
    
    if @todo.save
      redirect_to todos_path, notice: 'Todo was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @todo.update(todo_params)
      redirect_to todos_path, notice: 'Todo was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @todo.destroy
    redirect_to todos_path, notice: 'Todo was successfully deleted.'
  end

  def toggle
    @todo.toggle_completion!
    redirect_to todos_path
  end

  private

  def set_todo
    @todo = current_user.todos.find(params[:id])
  end

  def todo_params
    params.require(:todo).permit(:title, :description, :completed)
  end
end