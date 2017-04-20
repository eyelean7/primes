class Fixnum
  define_method(:prime) do
    range = (2..self)
    values = []
    range.each() do |num|
      values.push(num)
    end

    prime = 2
    until prime == self
      values.delete_if{|num| num%prime==0&&num!=prime}
      prime += 1
    end
    values
  end
end
