# "Write a ruby script that takes a number as an input and returns if it is divisible by 9.
# Write tests for your script and try it on a couple of examples. Send the code via email or github.
# There are countless ways to solve this, please don't copy it."

class Divisible

  DIVIDE_BY = 9
  attr_accessor :input

  def initialize(input)
    @input = input
  end

  def divide
    number = check_input_is_numeric?(input)
    return "Please enter a valid number" if number.nil?

    modulus_of_number(number)
  end

  def modulus_of_number(number)
    if (number % DIVIDE_BY) == 0
      "Success: #{number} is divisible by #{DIVIDE_BY}"
    else
      "Not divisible by #{DIVIDE_BY}"
    end
  end

  def check_input_is_numeric?(number)
    Integer(number) rescue Float(number) rescue nil
  end

  print "Enter a number: "
  p Divisible.new($stdin.gets.chomp).divide
end
