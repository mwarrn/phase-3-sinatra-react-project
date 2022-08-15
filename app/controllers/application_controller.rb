class ApplicationController < Sinatra::Base
  set :default_content_type, "application/json"
  
  # CREATE: Route that creates a new task and adds it to the database.
  post "/todos" do
    add_todo = Todo.create(
      name: params[:name],
      category_id: params[:category_id]
    )
    add_todo.to_json
  end

  # READ: Route that returns all the tasks in the database.
  get "/todos" do
    Todo.all.to_json
  end

  # READ: Route that returns a specific task based on the id.
  get "/todos/:id" do
    Todo.find(params[:id]).to_json
  end

  # UPDATE: Route that updates the task with the id that is passed in.
  patch "/todos/:id" do
    selected_todo = Todo.find(params[:id])
    selected_todo.update(
      name: params[:name],
      category_id: params[:category_id]
    )
    selected_todo.to_json
  end

  # DELETE: Route that deletes the task with the id that is passed in.
  delete "/todos/:id" do
    selected_todo = Todo.find(params[:id])
    selected_todo.destroy
  end

end
