class StudentsController < ApplicationController
  
  before_action :get_student, only: [:show, :edit, :update, :destroy]
  before_action :get_instructors
  
  def index
    @students = Student.all
  end
  
  def show
  end
  
  def new
    @student = Student.new
  end
  
  def edit
  end
  
  def create
    @student = Student.new(student_params)
    if @student.valid?
      @student.save
      redirect_to instructor_path(@student.instructor)
    else
      render :new
    end
  end
  
  def update
    @student.assign_attributes(student_params)
    if @student.valid?
      @student.save
      redirect_to student_path(@student)
    else
      render :edit
    end
  end
  
  def destroy
  end
  
  private
  
  def get_instructors
    @instructors = Instructor.all
  end
  
  def get_student
    @student = Student.find(params[:id])
  end
  
  def student_params
    strong_params(:student, :name, :major, :instructor_id, :age)
  end
  
end
