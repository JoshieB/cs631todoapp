json.extract! todo_list_task, :id, :title, :description, :completed, :todolist, :created_at, :updated_at
json.url todo_list_task_url(todo_list_task, format: :json)
