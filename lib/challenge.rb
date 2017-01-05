# frozen_string_literal: true
def calc(expr)
  # Your code here
  stack = []
  expr.split(' ').each do |token|
    if token =~ /\d+/
      stack << token.to_f
    else
      stack << token.to_sym.to_proc.call(stack.slice!(-2), stack.slice!(-1))
    end
  end
  stack.last || 0
end
