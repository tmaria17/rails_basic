require "rails_helper"
describe "user sees navigation links on all pages" do
  describe "they visit /students" do
    it "should have links" do
      student_1 = Student.create!(name: "Daniel")
      student_2 = Student.create!(name: "Kelly")
      visit students_path


      expect(page).to have_link("Create a New Student")
      expect(page).to have_link("All Students")
    end
  end
  describe"they visit the show page" do
    it "should have links" do
      student_1 = Student.create!(name: "Daniel")
      student_2 = Student.create!(name: "Kelly")
      visit student_path(student_1)

      expect(page).to have_link("Create a New Student")
      expect(page).to have_link("All Students")
    end
  end

  describe "They visit the new page" do
    it "should have links" do
    visit new_student_path

    expect(page).to have_link("Create a New Student")
    expect(page).to have_link("All Students")
    end
  end

  describe "They visit the edit page" do
    it "should have links" do
      student_1 = Student.create!(name: "Daniel")

      visit edit_student_path(student_1)

      expect(page).to have_link("Create a New Student")
      expect(page).to have_link("All Students")
    end
  end

end
