# code here!
class School
    attr_accessor :roster
    attr_reader :school
    

    def initialize(school)
        @school = school
        @roster = {}
    end

    def add_student(student,grade)
        @roster[grade] || @roster[grade] = []
        @roster[grade] << student
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.merge(@roster) {|grade, student| student.sort}
    end

end