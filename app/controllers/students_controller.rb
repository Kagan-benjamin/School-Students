class StudentsController < ApplicationController
  
  def index
    @students = Student.all
    if params[:search]
      @students = Student.search(params[:search]).order("created_at DESC")
    else
      @students = Student.all.order("created_at DESC")
    end
  end
  
  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new 
    @schools = School.all 
  end

  def edit
    @student = Student.find(params[:id])
    @schools = School.all 
  end

  def update
    @student = Student.find(params[:id])
    @student.update(student_params)
    redirect_to student_path 
  end

  def create
    @student = Student.create(student_params)
    redirect_to schools_path 
  end

  def destroy
    Student.destroy(params[:id])
      redirect_to schools_path
  end

  private 
  def student_params
    params.require(:student).permit(:name, :age, :school_id)
  end

end
