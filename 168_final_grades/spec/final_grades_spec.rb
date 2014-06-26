require 'rspec'
require_relative '../lib/final_grades'

describe Import do
  it 'reads in names from a csv' do
    people = Import.students
    expect(people.count).to eq(3000)
  end
end

describe Student do
  it 'students have 5 test scores' do
    people = Import.students
    first = people.first
    expect(first.test_scores.count).to eq(5)
  end
end

describe Export do
  it 'outputs students and test scores' do
    students = Import.students
    Export.students_with_tests(students)
    expect(File.exists?('student_grades.csv')).to be(true)
    expect(File.zero?('student_grades.csv')).to be(false)
  end
end
