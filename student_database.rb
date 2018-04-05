# Class to manipulate and store Student objects
class StudentDatabase
  def initialize
    @storage = []
  end

  def add(name, age, identity, grade)
    s = Student.new
    s.name = name
    s.age = age
    s.id = identity
    s.grade = grade
    @storage << s
  end

  # returns the name (or error string) of the student with the matching id
  def find(identity)
    error = "The ID was not found"
    found = nil
    @storage.select do |student|
      found = student.name if student.this?(identity)
    end
    found.nil? ? error : found
  end

  # returns the name of the student with the highest grade
  def top
    highest = 0
    @storage.select do |student|
      highest = student.grade if student.grade > highest
    end
    highest
  end

  # returns the median age of the Students
  def calc_median
    @storage.sort_by! { :age }
    right = @storage.size / 2
    left = @storage.size / 2 - 1
    center = (@storage.size - 1) / 2
    avg = (@storage[left].age + @storage[right].age).to_f / 2
    if @storage.size.odd? # odd
      @storage[center].age
    else
      avg
    end
  end
end