class TasksController < ApplicationController
  before_action :set_todo_list
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  # GET todo_lists/1/tasks
  def index
    @tasks = @todo_list.tasks
  end

  # GET todo_lists/1/tasks/1
  def show
  end

  # GET todo_lists/1/tasks/new
  def new
    @task = @todo_list.tasks.build
  end

  # GET todo_lists/1/tasks/1/edit
  def edit
  end

  # POST todo_lists/1/tasks
  def create
    @task = @todo_list.tasks.build(task_params)

    if @task.save
      redirect_to(todo_list_path(@task.todo_list.id), notice: 'Task was successfully created.')
    else
      render action: 'new'
    end
  end

  # PUT todo_lists/1/tasks/1
  def update
    if @task.update(task_params)
      redirect_to(todo_list_path(@task.todo_list.id), notice: 'Task was successfully updated.')
    else
      render action: 'edit'
    end
  end

  # DELETE todo_lists/1/tasks/1
  def destroy
    @task.destroy

    redirect_to todo_list_path(@task.todo_list.id)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_todo_list
      @todo_list = TodoList.find(params[:todo_list_id])
    end

    def set_task
      @task = @todo_list.tasks.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def task_params
      params.require(:task).permit(:title, :description, :completed, :todolist)
    end
end
