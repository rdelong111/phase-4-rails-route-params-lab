class StudentsController < ApplicationController

  def index
    students = Student.all
    if params[:name]
      name = params[:name].titleize
      students = Student.where("first_name = ? OR last_name = ?", name, name).all
    end
    render json: students
  end

  def find_student
    render json: Student.find(params[:id])
  end

end
