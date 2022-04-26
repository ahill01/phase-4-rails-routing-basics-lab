class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
     end
     def highest_grade
         grades = Student.all.sort{|a,b| b.grade <=> a.grade}
         render json: grades
     end
end
