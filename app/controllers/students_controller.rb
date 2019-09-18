class StudentsController < ApplicationController

    def index
        @students = Student.all
    end

    def show
        find_student_by_id
    end

    def new
        @student = Student.new
    end

    def create
        @student = Student.new(student_params(:first_name, :last_name))
        @student.save
        redirect_to student_path(@student)
    end

    def update
        find_student_by_id
        @student.update(student_params(:first_name, :last_name))
        redirect_to student_path(@student)
    end

    def edit
        find_student_by_id
    end

    private

    def student_params(*args)
        params.require(:student).permit(*args)
    end

    def find_student_by_id
        @student = Student.find(params[:id])
    end
    
end
