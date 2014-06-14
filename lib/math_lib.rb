require "math_lib/version"

class String
  def is_number?
    true if Float(self) rescue false
  end

  def detect_coefficient
    self.each_char do |ch|
      if ch.is_number?
        next
      else
        return ch.to_s
      end
    end
  end
end

module MathLib

  class MathValidator

    ##= Validate the all input are numbers and convert them to integer
    def self.validate_input(input)
      input.to_s.is_number? ? input.to_i : raise('MathLib handle only numbers.')
    end

  end

  class MathBasic

    def initialize
    end

    ##= Calculate quadratic_equation
    def quadratic_equation(a,b,c)
      a = MathLib::MathValidator.validate_input(a)
      b = MathLib::MathValidator.validate_input(b)
      c = MathLib::MathValidator.validate_input(c)

      delta = (b * b) - (4 * a * c)

      if (delta < 0)
        puts "Delta is complex number"

        return 0
      elsif (delta == 0)
        puts "quadratic equation has has only 1 answer"
        root1 = -b / (2* a);
        puts "Roots of quadratic equation is: #{root1}"

        return 0
      elsif (delta > 0)
        puts "quadratic equation has real numbers"
        root1 = ( -b + Math.sqrt(delta)) / (2 * a)
        root2 = ( -b - Math.sqrt(delta)) / (2 * a)
        puts "Roots of quadratic equation are: #{root1} || #{root2}"

        return 0
      end
    end

  end
end
