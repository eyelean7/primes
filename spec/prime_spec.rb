require ("rspec")
require ("prime")
require ("pry")

describe('Fixnum#prime') do
  it('returns primes up to a given number') do
    expect(5.prime()).to(eq([2, 3, 5]))
  end
  it('returns primes up to a given number') do
    expect(10.prime()).to(eq([2, 3, 5, 7]))
  end

end
