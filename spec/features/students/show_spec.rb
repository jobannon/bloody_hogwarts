require "rails_helper"

RSpec.describe "as a visitor" do 
  describe "when I visit /students/id" do 
    before(:each) do 
      @student_1 = Student.create!(name: "Bobbie", age: 17, house: "Little house")
      @course_1 = @student_1.courses.create!(name: "super great")
      @course_2 = @student_1.courses.create!(name: "the worse")
    end 

    it "shows me a list of student courses" do 

      visit "/students/#{@student_1.id}"

      expect(page).to have_content(@course_1.name)
      expect(page).to have_content(@course_2.name)
    end 
  end 
end
