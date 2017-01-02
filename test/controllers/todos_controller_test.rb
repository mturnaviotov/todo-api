require 'test_helper'

class TodosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @todo = todos(:one)
    @fail = todos(:failed)
  end

  test "should get index" do
    get todos_url, as: :json
    assert_response :success
  end

  test "should create todo" do
    assert_difference('Todo.count') do
      post todos_url, params: { todo: { comment: @todo.comment, date_end: @todo.date_end, done: @todo.done, priority: @todo.priority } }, as: :json
    end

    assert_response 201
  end

  test "should fail todo without comment" do
#    assert_difference('Todo.count') do
      post todos_url, params: { todo: {date_end: @fail.date_end, done: @fail.done, priority: @fail.priority } }, as: :json
#    end

    assert_response 422
  end

  test "should show todo" do
    get todo_url(@todo), as: :json
    assert_response :success
  end

  test "should update todo" do
    patch todo_url(@todo), params: { todo: { comment: @todo.comment, date_end: @todo.date_end, done: @todo.done, priority: @todo.priority } }, as: :json
    assert_response 200
  end

  test "should destroy todo" do
    assert_difference('Todo.count', -1) do
      delete todo_url(@todo), as: :json
    end

    assert_response 204
  end
end
