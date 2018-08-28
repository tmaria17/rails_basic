require "rails_helper"

describe "user sees all student" do
  describe "they visit /students" do
    it "displays all student" do
      student_1 = Student.create!(name: "Daniel")
      student_2 = Student.create!(name: "Kelly")
      visit students_path

      expect(page).to have_content("Daniel")
      expect(page).to have_content("Kelly")
    end
  end
end
