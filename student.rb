class Student
  def initialize
    @name = String.new()
    @age = Integer
    @id = Integer
    @grade = Integer
  end

  def this?(id)
    @id == id
  end

  def name()
    @name
  end

  def name=(name)
    @name=name
  end

  def age=(age)
    @age=age
  end

  #additional code since Woodcock forgot
  def age()
    @age
  end

  def id=(id)
    @id = id
  end

  def grade()
    @grade
  end

  def grade=(grade)
    @grade=grade
  end
end