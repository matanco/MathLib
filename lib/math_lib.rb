require "math_lib/version"

class String
  def is_number?
    true if Float(self) rescue false
  end

  ##= move all expressions to same side in equation and equal it to 0
  def orginize_equation
    gsub!(' ','')
    ##TODO:: orginaize 
  end
end

module MathLib

  class MathValidator

    ##= Validate the all input are numbers and convert them to integer
    def self.validate_input(input)
      input.to_s.is_number? ? input.to_i : raise('MathLib:: handle only numbers.')
    end

    def self.validate_linear_equation(input)
      input.index('=').present? ? true : raise('MathLib:: invalid linear equation')
    end

  end

  class MathBasic

    def initialize
    end

    ##= Calculate quadratic equation
    def quadratic_equation(a,b,c)
      a = MathLib::MathValidator.validate_input(a)
      b = MathLib::MathValidator.validate_input(b)
      c = MathLib::MathValidator.validate_input(c)

      delta = (b * b) - (4 * a * c)

      if (delta < 0)
        puts 'Delta is complex number'

        return 0
      elsif (delta == 0)
        puts 'quadratic equation has has only 1 answer'
        root1 = -b / (2* a);
        puts "Roots of quadratic equation is: #{root1}"

        return 0
      elsif (delta > 0)
        puts 'quadratic equation has real numbers'
        root1 = ( -b + Math.sqrt(delta)) / (2 * a)
        root2 = ( -b - Math.sqrt(delta)) / (2 * a)
        puts "Roots of quadratic equation are: #{root1} || #{root2}"

        return 0
      end
    end

    ##= Calculate linear equation
    ##= Syntax:: 3x + 7 = 4x * 6^2
    ##= Syntax:: 2x = 2
    def linear_equation(equation)
      #TODO:: calculate
    end

  end
end
