#Anastassia Bobokalonova

class RPNCalculator
# My Original Version:
=begin
  def initialize
    @stack = []
  end

  def push(el)
    @stack << el
  end

  def plus
    operand1 = @stack.pop
    operand2 = @stack.pop
    @stack.push(operand2.to_f + operand1.to_f)
  end

  def minus
    operand1 = @stack.pop
    operand2 = @stack.pop
    @stack.push(operand2.to_f - operand1.to_f)
  end

  def times
    operand1 = @stack.pop
    operand2 = @stack.pop
    @stack.push(operand2.to_f * operand1.to_f)
  end

  def divide
    operand1 = @stack.pop
    operand2 = @stack.pop
    @stack.push(operand2.to_f / operand1.to_f)
  end

  def value
    @stack[-1]
  end

  def tokens(str)
    operators = ["+", "-", "*", "/"]
    str.split.map do |el|
      if operators.include?(el)
        el.to_sym
      else
        el.to_i
      end
    end
  end

  def evaluate(str)
    expression = tokens(str)
    expression.each do |el|
      if el.class == Fixnum
        push(el)
      else
        plus if el == :+
        minus if el == :-
        times if el == :*
        divide if el == :/
      end
    end
    value
  end
=end

#Refactored Version:
  def initialize
    @stack = []
  end

  def push(num)
    @stack << num
  end

  def value
    @stack.last
  end

  def plus
    perform_operation(:+)
  end

  def minus
    perform_operation(:-)
  end

  def times
    perform_operation(:*)
  end

  def divide
    perform_operation(:/)
  end

  def tokens(string)
    tokens = string.split
    #Ternary Operator syntax: if_true? then_this : else_this
    tokens.map { |char| operation?(char) ? char.to_sym : Integer(char)}
  end

  def evaluate(string)
    tokens = tokens(string)
    tokens.each do |token|
      case token
      when Integer
        push(token)
      else
        perform_operation(token)
      end
    end

  value
  end

  private

  def operation?(char)
    [:+, :-, :*, :/].include?(char.to_sym)
  end

  def perform_operation(op_symbol)
    raise "calculator is empty" if @stack.size < 2

    second_operand = @stack.pop.to_f
    first_operand = @stack.pop.to_f

    case op_symbol
    when :+
      push(first_operand + second_operand)
    when :-
      push(first_operand - second_operand)
    when :*
      push(first_operand * second_operand)
    when :/
      push(first_operand / second_operand)
    else
      @stack << first_operand
      @stack << second_operand
      raise "No such operation: #{op_symbol}"
    end
  end

end
