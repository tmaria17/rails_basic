require "rails_helper"

describe "user edits a new student" do
      it "edits a new student" do
        student_1 = Student.create(name: "Smaug")
        student_2 = Student.create(name: "Gracie")
        visit edit_student_path(student_1)
        #save_and_open_page
        fill_in "student[name]", with: "Trevor"
        click_on "Update Student"

        expect(current_path).to eq(students_path(student_1))
        expect(page).to have_content("Trevor")
      end
end
