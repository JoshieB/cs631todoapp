require 'test_helper'

class TasksControllerTest < ActionController::TestCase
  setup do
    @todo_list = todo_lists(:one)
    @task = tasks(:one)
  end

  test "should get index" do
    get :index, params: { todo_list_id: @todo_list }
    assert_response :success
  end

  test "should get new" do
    get :new, params: { todo_list_id: @todo_list }
    assert_response :success
  end

  test "should create task" do
    assert_difference('Task.count') do
      post :create, params: { todo_list_id: @todo_list, task: @task.attributes }
    end

    assert_redirected_to todo_list_task_path(@todo_list, Task.last)
  end

  test "should show task" do
    get :show, params: { todo_list_id: @todo_list, id: @task }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { todo_list_id: @todo_list, id: @task }
    assert_response :success
  end

  test "should update task" do
    put :update, params: { todo_list_id: @todo_list, id: @task, task: @task.attributes }
    assert_redirected_to todo_list_task_path(@todo_list, Task.last)
  end

  test "should destroy task" do
    assert_difference('Task.count', -1) do
      delete :destroy, params: { todo_list_id: @todo_list, id: @task }
    end

    assert_redirected_to todo_list_tasks_path(@todo_list)
  end
end
