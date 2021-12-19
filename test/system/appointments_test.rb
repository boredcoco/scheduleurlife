require "application_system_test_case"

class AppointmentsTest < ApplicationSystemTestCase
  setup do
    @appointment = appointments(:one)
  end

  test "visiting the index" do
    visit appointments_url
    assert_selector "h1", text: "Appointments"
  end

  test "creating a Appointment" do
    visit appointments_url
    click_on "New Appointment"

    fill_in "Comments", with: @appointment.comments
    fill_in "Date day", with: @appointment.date_day
    fill_in "Date month", with: @appointment.date_month
    fill_in "Date year", with: @appointment.date_year
    fill_in "End ampm", with: @appointment.end_ampm
    fill_in "End hour", with: @appointment.end_hour
    fill_in "End min", with: @appointment.end_min
    fill_in "Location", with: @appointment.location
    fill_in "Name", with: @appointment.name
    fill_in "Start ampm", with: @appointment.start_ampm
    fill_in "Start hour", with: @appointment.start_hour
    fill_in "Start min", with: @appointment.start_min
    click_on "Create Appointment"

    assert_text "Appointment was successfully created"
    click_on "Back"
  end

  test "updating a Appointment" do
    visit appointments_url
    click_on "Edit", match: :first

    fill_in "Comments", with: @appointment.comments
    fill_in "Date day", with: @appointment.date_day
    fill_in "Date month", with: @appointment.date_month
    fill_in "Date year", with: @appointment.date_year
    fill_in "End ampm", with: @appointment.end_ampm
    fill_in "End hour", with: @appointment.end_hour
    fill_in "End min", with: @appointment.end_min
    fill_in "Location", with: @appointment.location
    fill_in "Name", with: @appointment.name
    fill_in "Start ampm", with: @appointment.start_ampm
    fill_in "Start hour", with: @appointment.start_hour
    fill_in "Start min", with: @appointment.start_min
    click_on "Update Appointment"

    assert_text "Appointment was successfully updated"
    click_on "Back"
  end

  test "destroying a Appointment" do
    visit appointments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Appointment was successfully destroyed"
  end
end
