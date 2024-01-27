require "application_system_test_case"

class ClientWorkoutsTest < ApplicationSystemTestCase
  setup do
    @client_workout = client_workouts(:one)
  end

  test "visiting the index" do
    visit client_workouts_url
    assert_selector "h1", text: "Client workouts"
  end

  test "should create client workout" do
    visit client_workouts_url
    click_on "New client workout"

    fill_in "Client name", with: @client_workout.client_name
    fill_in "Date of workout", with: @client_workout.date_of_workout
    fill_in "Duration mins", with: @client_workout.duration_mins
    fill_in "Paid amount", with: @client_workout.paid_amount
    fill_in "Trainer", with: @client_workout.trainer
    click_on "Create Client workout"

    assert_text "Client workout was successfully created"
    click_on "Back"
  end

  test "should update Client workout" do
    visit client_workout_url(@client_workout)
    click_on "Edit this client workout", match: :first

    fill_in "Client name", with: @client_workout.client_name
    fill_in "Date of workout", with: @client_workout.date_of_workout
    fill_in "Duration mins", with: @client_workout.duration_mins
    fill_in "Paid amount", with: @client_workout.paid_amount
    fill_in "Trainer", with: @client_workout.trainer
    click_on "Update Client workout"

    assert_text "Client workout was successfully updated"
    click_on "Back"
  end

  test "should destroy Client workout" do
    visit client_workout_url(@client_workout)
    click_on "Destroy this client workout", match: :first

    assert_text "Client workout was successfully destroyed"
  end
end
