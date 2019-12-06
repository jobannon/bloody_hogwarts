require "rails_helper"

RSpec.describe "as a visitor" do 
  describe "when it visit /students path" do 
    before(:each) do 
      @student_1 = Student.create!(name: "Bobbie", age: 17, house: "Little house")
      @student_2 = Student.create!(name: "Sally", age: 1, house: "Big house")
    end 
    it "shows me a list of students with 
    -Name
    -Age
    -House" do 

      visit "/students"

      expect(page).to have_content(@student_1.name)
      expect(page).to have_content(@student_1.age)
      expect(page).to have_content(@student_1.house)

      expect(page).to have_content(@student_2.name)
      expect(page).to have_content(@student_2.age)
      expect(page).to have_content(@student_2.house)
    end 
  end 
end 
