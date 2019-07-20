class StudentsController < ApplicationController
  # before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end
  
  def activate
    # if @student.active == true
    #   @student.update(active: false)
    # else
    #   @student.update(active: true)
    # end
    @student = Student.find(params[:id])
    @student.toggle(:active)
    @student.save
    redirect_to student_path(@student)
  end

  # private

  #   def set_student
  #     @student = Student.find(params[:id])
  #   end
end