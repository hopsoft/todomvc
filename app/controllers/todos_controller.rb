class TodosController < ApplicationController
  before_action -> { @filter = Rails.cache.read(:filter) || "all" }

  def index
    @all_todos = Todo.where(session_id: session_id)
    @filtered_todos = @all_todos.public_send(@filter).order(:created_at)
  end

  private

  def session_id
    session.id.to_s
  end
end
