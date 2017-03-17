time1 = Time.new
puts "Current Time : " + time1.inspect
time1 = Time.now
puts "Current Time : " + time1.inspect
puts time1.year
puts time1.month
puts time1.day
puts time1.wday
puts time1.yday
puts time1.hour
puts time1.min
puts time1.sec
puts time1.usec
puts time1.zone
#GMT CST UCT MST
Time.local(2008, 7, 8)
Time.local(2008, 7, 8, 9, 10)
Time.utc(2008, 7, 8, 9, 10)
Time.gm(2008, 7, 8, 9, 10, 11)
val = time1.to_a
p val
puts Time.utc(*val)
puts time1.to_s
puts time1.ctime
puts time1.localtime
puts time1.strftime("%Y-%m-%d %H:%M:%S")
past = time1 - 10
puts past
future = time1 + 10
puts future
puts future - past
