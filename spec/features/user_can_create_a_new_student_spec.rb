require "rails_helper"

describe "user creates a new student" do
      it "creates a new student" do
        visit new_student_path

        fill_in "student[name]", with: "Kat"
        click_on "Create Student"
        #save_and_open_page
        expect(current_path).to eq(student_path(Student.last))
        expect(page).to have_content("Kat")
      end
end
