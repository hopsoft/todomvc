class TodosController < ApplicationController
  def index
    @filter = Rails.cache.read(:filter) || "all"
    @all_todos = Todo.where(session_id: session.id.to_s)
    @filtered_todos = @all_todos.public_send(@filter).order(:created_at)
  end
end
