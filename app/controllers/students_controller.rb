class StudentsController < ApplicationController
    def index
        students = Student.all 
        students.to_json
    end

    def grades 
        gradeList = Student.order(:grades).reverse
        gradeList.to_json
    end

    def highest_grade 
        student = Student.order(:grades).first
        student.to_json
    end
end
