require 'pry'
require 'CSV'
class Import
  def self.students
    students = []
    CSV.foreach('people.csv', headers: true) do |row|
      student = Student.new(row[0], row[1])
      student.add_test_scores(rand(50..100),
        rand(50..100), rand(50..100), rand(50..100), rand(50..100))
      students << student
    end
    students
  end
end

class Student
  attr_reader :first_name, :last_name, :test_scores
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
    @test_scores = []
  end

  def add_test_scores(*scores)
    scores.each { |score| @test_scores << score } 
  end
end

class Export
  def self.students_with_tests(students)
    headers =  ["First Name", "Last Name", "Test 1", "Test 2", "Test 3", "Test 4"]
    CSV.open('student_grades.csv', 'wb') do |csv|
      students.each do |student|
        csv << [student.first_name,
                student.last_name,
                student.test_scores[0],
                student.test_scores[1],
                student.test_scores[2],
                student.test_scores[3]
        ]
      end
    end
  end
end

