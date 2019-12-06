class CoursesController < ApplicationController
  def index
    @courses = Courses.all 
    @students = Students.all
  end 
end 
