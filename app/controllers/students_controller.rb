class StudentsController < ApplicationController

    def index
        students = Student.all
        render json: students
    end

    def grades
        students = Student.all
        render json: students.order(grade: :desc)
    end

    def highest_grade
        highest = Student.all.order(grade: :desc).first
        render json: highest
    end

end
