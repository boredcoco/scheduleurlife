require "application_system_test_case"

class TasksTest < ApplicationSystemTestCase
  setup do
    @task = tasks(:one)
  end

  test "visiting the index" do
    visit tasks_url
    assert_selector "h1", text: "Tasks"
  end

  test "creating a Task" do
    visit tasks_url
    click_on "New Task"

    fill_in "Category", with: @task.category
    fill_in "Comments", with: @task.comments
    fill_in "Due day", with: @task.due_day
    fill_in "Due month", with: @task.due_month
    fill_in "Due year", with: @task.due_year
    fill_in "Name", with: @task.name
    click_on "Create Task"

    assert_text "Task was successfully created"
    click_on "Back"
  end

  test "updating a Task" do
    visit tasks_url
    click_on "Edit", match: :first

    fill_in "Category", with: @task.category
    fill_in "Comments", with: @task.comments
    fill_in "Due day", with: @task.due_day
    fill_in "Due month", with: @task.due_month
    fill_in "Due year", with: @task.due_year
    fill_in "Name", with: @task.name
    click_on "Update Task"

    assert_text "Task was successfully updated"
    click_on "Back"
  end

  test "destroying a Task" do
    visit tasks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Task was successfully destroyed"
  end
end
