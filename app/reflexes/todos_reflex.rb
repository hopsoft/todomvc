class TodosReflex < ApplicationReflex
  before_reflex :assign_todo, only: [:update, :toggle, :destroy]

  def create
    Todo.create session_id: session.id.to_s, title: element.value
    cable_ready.set_value selector: "##{element.id}", value: ""
  end

  def edit
    @edit_id = element.dataset.id.to_i
  end

  def cancel_edit
    @edit_id = nil
  end

  def update
    @todo&.update title: element.value
  end

  def toggle
     @todo&.toggle! :completed
  end

  def destroy
      @todo&.destroy
  end

  def toggle_all
    todos = Todo.where(session_id: session.id.to_s)
    todos.update_all completed: todos.active.exists?
  end

  def destroy_completed
    Todo.where(session_id: session.id.to_s, completed: true).destroy_all
  end

  def filter
    Rails.cache.write :filter, element.dataset.filter
  end

  private

  def assign_todo
    @todo = Todo.find_by(session_id: session.id.to_s, id: element.dataset.id)
  end
end
