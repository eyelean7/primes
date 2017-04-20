class Fixnum
  define_method(:prime) do
    values =*(2..self)

    prime = 2
    until prime == self
      values.delete_if{|num| num%prime==0&&num!=prime}
      prime += 1
    end
    values.join(" ")
  end
end
