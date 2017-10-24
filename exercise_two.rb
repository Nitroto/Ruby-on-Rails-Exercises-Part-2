def missing_letter(text)
  ascii = text.each_byte.map &:ord
  codes = (('a'.ord..('z'.ord)).to_a + ('A'.ord..('Z'.ord)).to_a)
  (codes[codes.index(ascii[0])..codes.index(ascii[-1])] - text.bytes).first.chr
end

def multiples_of_3_and_5(num)
  (1...num).select { |n| (n % 3).zero? or (n % 5).zero? }.sum
end

def digital_root(num)
  num.digits.count != 1 ? digital_root(num.digits(10).sum) : num
end

puts missing_letter(gets.chomp)
puts multiples_of_3_and_5(gets.chomp.to_i)
puts digital_root(gets.chomp.to_i)