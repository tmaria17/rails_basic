describe "user deletes a student" do
      it "deletes student" do
        student_1 = Student.create(name: "John")

        visit students_path
        click_link 'Delete'

        expect(page).to_not have_content("John")
        expect(current_path).to eq(students_path)
      end
end
