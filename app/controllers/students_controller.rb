require "pry"

class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    set_student
  end

  def edit
    set_student
  end

  def activate
    set_student

    if @student.active == true
      @student.active = false
      @student.save
      p "I am false"
    else
      @student.active = true
      @student.save
      p "I am true"
    end
    redirect_to student_path(@student)
  end

  # def activate_student
  #   set_student
  #   @student.update(params[:active])
  #   redirect student(@student)
  # end

  # def update
  #   set_student
  #   @student.update(params[:active])
  # end

  private

  def set_student
    @student = Student.find(params[:id])
  end
end
