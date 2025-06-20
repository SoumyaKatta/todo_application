class MakeUserIdNotNullOnTodos < ActiveRecord::Migration[7.1]
  def change
    change_column_null :todos, :user_id, false
  end
end
