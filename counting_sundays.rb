# You are given the following information, but you may prefer to do some research for yourself.

# 1 Jan 1900 was a Monday.
# Thirty days has September,
# April, June and November.
# All the rest have thirty-one,
# Saving February alone,
# Which has twenty-eight, rain or shine.
# And on leap years, twenty-nine.
# A leap year occurs on any year evenly divisible by 4, but not on a century unless it is divisible by 400.
# How many Sundays fell on the first of the month during the twentieth century (1 Jan 1901 to 31 Dec 2000)?

# Answer: 171

def add_day(day)
  day += 24*60*60
end

start_day = Time.new(1901, 1, 1)
current_day = start_day
end_day = Time.new(2000, 12, 31)
counter = 0

start_time = Time.now
until current_day == end_day do
  if current_day.mday == 1
    if current_day.sunday?
      counter += 1
    end
  end
  current_day = add_day(current_day)
end


p "#{counter} Sundays"
p "Took #{Time.now - start_time} seconds."

# From comments, much better
t = Time.now
p "#{(1901..2000).map {|i| (1..12).map {|m| Time.new(i, m)}}.flatten.count {|t| t.sunday?}} Sundays"
p "Took #{Time.now - t} seconds."
