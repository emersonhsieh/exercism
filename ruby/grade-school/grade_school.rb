module BookKeeping
  VERSION = 3
end

class School
  def initialize
    @students = []
  end
  
  def students(grade)
    init_grade(grade)
    @students[grade-1][:students]
  end
  
  def add(name, grade)
    init_grade(grade)
    @students[grade-1][:students] << name
    @students[grade-1][:students].sort!
    
    @students[grade-1][:students]
  end
  
  def students_by_grade
    @students.compact
  end
  
  private
  
  def init_grade(grade)
    if @students[grade-1] == nil
      @students[grade-1] = {}
      @students[grade-1][:grade] = grade
      @students[grade-1][:students] = [] 
    end
  end
end

