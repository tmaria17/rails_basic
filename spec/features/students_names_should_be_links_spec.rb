require 'rails_helper'

describe "User sees all students' names as links" do
  it 'displays all names as links' do
    student_1 = Student.create(name: "Gracie")
    student_2 = Student.create(name: "Nala")

    visit students_path

    expect(page).to have_link("Gracie")
    expect(page).to have_link("Smaug")
  end
end
