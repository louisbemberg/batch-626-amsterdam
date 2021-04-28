require 'pry-byebug'

def messy_math(integer)
  first = integer * 4
  second = first + integer
  third = (second * 2) - first
  fourth = integer * second
  return first + second + third + fourth
end

messy_math(2)
age = 0

while age <= 18
  puts "happy birthday!"
  age += 1
  binding.pry
end

# Install: gem install pry-byebug in terminal
# next
# continue
# !!!
