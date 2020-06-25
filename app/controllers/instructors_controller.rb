class InstructorsController < ApplicationController
  before_action :get_instructor, only: [:show, :edit, :update, :destroy]
  
  def index
    @instructors = Instructor.all
  end
  
  def show
    @students = @instructor.students.sort_by(&:name)
  end
  
  private
  
  def get_instructor
    @instructor = Instructor.find(params[:id])
  end
  
  def instructor_params
    strong_params(:instructor, :name)
  end

end
