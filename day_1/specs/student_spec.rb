require("minitest/autorun")
require("minitest/rg")
require_relative("../student.rb")

class TestStudent < MiniTest::Test

def test_student_name
  student = Student.new("Fred", "E35")
  assert_equal("Fred", student.get_name)
end

def test_student_cohort
  student = Student.new("Fred", "E35")
  assert_equal("E35", student.get_cohort)
end

def test_set_student_name
  student = Student.new("Fred", "E35")
  student.set_name("Joe")
  assert_equal("Joe", student.get_name)
end

def test_set_cohort_name
  student = Student.new("Fred", "E35")
  student.set_cohort("G07")
  assert_equal("G07", student.get_cohort)
end

def test_student_talk
  student = Student.new("Fred", "E35")
  assert_equal("I can talk", student.student_talk)
end









end
