require "rails_helper"

class StudentsController < ApplicationController
  def index
    @students = Student.all
  end 

  def show
    student = Student.find(params[:student_id]) 
    @courses = student.courses
  end 
end 
