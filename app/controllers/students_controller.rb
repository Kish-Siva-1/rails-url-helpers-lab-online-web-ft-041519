class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def active
    @student = Student.find(params[:id])
    @student.active = !@student.active
    @student.save
    redirect to "/student/#{@student.id}"
  end 

  private

    def set_student
      @student = Student.find(params[:id])
    end
end