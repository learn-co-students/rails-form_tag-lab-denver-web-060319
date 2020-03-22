# require "pry"
class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    # @student = Student.create(first_name: params["student"]["first_name"], last_name: params["student"]["last_name"])
    # @student.first_name
  end

  def create
    # binding.pry
    @student = Student.create(first_name: params["student"]["first_name"], last_name: params["student"]["last_name"])
    #puts "#{params}"
    redirect_to '/students'
  end
  

end
