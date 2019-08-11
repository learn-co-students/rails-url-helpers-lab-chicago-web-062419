class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :activate]
  
    def index
        @students = Student.all
    end

    def show
        # before_action
        @student_status = ""
        
        if @student.active == true
            @student_status = "active"
        else
            @student_status = "inactive"
        end
    end

    def activate
        #before_action
        
        if @student.active == false
            @student.active = true
            @student.save
            redirect_to @student
        else
            @student.active = false
            @student.save
            redirect_to @student
        end
    end

private

    def set_student
      @student = Student.find_by(id: params[:id])
    end
end