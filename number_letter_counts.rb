# If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.
# If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?
# NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 20 letters. The use of "and" when writing out numbers is in compliance with British usage.
# Not solved


class NumberLetterCounts
  def one_to_nine
    singles = [3,3,5,4,4,3,5,5,4]
    sum = singles.inject(0) {|sum, x| sum + x}
    return sum
  end
  def ten_to_nineteen
    teens = [3,6,6,8,8,7,7,9,8,8]
    sum = teens.inject(0) {|sum, x| sum + x}
    return sum
  end
  def twenty_to_ninety_nine
    tens = [6,6,6,5,5,7,6,6]
    # sum of base tens
    sum = tens.inject(0) {|sum, x| sum + x}
    tens.each {|ten| one_to_nine.singles.each {|single| sum += ten + single}}
    return sum
  end
  def one_to_ninety_nine
    sum = one_to_nine + ten_to_nineteen + twenty_to_ninety_nine
  end

  def one_to_one_thousand
    # hundred = 7, mentioned with every number from one hundred through nine hundred and ninety nine
    sum = 7 * 900
    # and = 3; mentioned with every number between one hundred and one thousand, excluding every hundred (nine occurrances)
    sum += 3 * 891
    # one to nine are mentioned once along with hundred
    sum += one_to_nine * 100
    10.times {sum += one_to_ninety_nine}
    # one thousand
    sum += 3 + 8
    return sum
  end

  def calculate
    return one_to_one_thousand
  end

end
nlc = NumberLetterCounts.new

p nlc.one_to_nine
p nlc.ten_to_nineteen
p nlc.twenty_to_ninety_nine
p nlc.one_to_ninety_nine
p nlc.one_to_one_thousand
