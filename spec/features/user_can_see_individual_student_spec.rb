require 'rails_helper'

describe 'student show page' do
  describe 'as a visitor' do
    it "displays information for one student" do
      student_1 = Student.create!(name: "John")
      student_2 = Student.create!(name: "Maria")
      save_and_open_page

      visit student_path(student_1)




      expect(page).to have_content("John")
    end
  end
end
