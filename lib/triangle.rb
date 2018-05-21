class Triangle
  
  def initialization(length1, length2, length3)
    @length1 = length1
    @length2 = length2 
    @length3 = length3
  end
  
  def kind(triangle)
    if @length1 == 0 || @length2 == 0 || @length3 == 0 
      begin
        raise TriangleError 
      rescue TriangleError => error 
        puts error.message
      end 
        
    # if @length1 + @length2 <= @length3) || 
    # @length2 + @length3 <= @length1||
    # @length1 + @length3 <= @length2
    #   begin
    #     raise TriangleError 
    #   rescue TriangleError => error 
    #     puts error.message
      
    else
      if @length1 == @length2 && @length3 == @length1 
        return :equilaterial
      elsif @length1 == @length2 || @length1 == @length3 || @length2 == @length3 
        return :isosceles 

      else 
        return :scalene
      end 
    end 
  end 
  
  class TriangleError < StandardError
    def message 
      "you must give the get_married method an argument of an instance of the person class!"
    end 
  end
end 
