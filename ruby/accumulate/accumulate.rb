module BookKeeping
  VERSION = 1
end

class Array
  def accumulate &input_proc
    map{|x| input_proc.call(x)}
  end
end
