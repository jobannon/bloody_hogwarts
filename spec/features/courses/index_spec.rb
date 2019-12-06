require "rails_helper"

RSpec.describe "as a visitor" do 
  describe "when i visit /course" do 
    before(:each) do 
      @student_1 = Student.create!(name: "Bobbie", age: 17, house: "Little house")
      
      @course_1 = @student_1.courses.create!(name: "super great")
      @course_2 = @student_1.courses.create!(name: "the worse")
    end 
    it "shows me a list of courses and the number of students enrolled in each course" do 

      visit "/courses"

      expect(page).to have_content("super great: 1")
      expect(page).to have_content("the worse: 1")
    end 
  end
end

