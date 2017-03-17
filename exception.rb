=begin
rescue OneTypeOfException
  puts "OneTypeOfException"
rescue AnotherTypeOfException
  puts "AnotherTypeOfException"
else
  puts "Exception"
end
begin
  file = open("/unexistant_file")
  if file
    puts "File opened successfully"
  end
rescue
  file = STDIN
end
print file, "==", STDIN, "
"
begin
  puts 'I am before the raise'
  raise 'An error has occurred'
  puts 'I am after the raise'
rescue
  puts 'I am rescued'
end
puts 'I am after the begin block'
begin
  raise 'A test exception'
rescue Exception => e
  puts e.message
  puts e.backtrace.inspect
end
begin
  raise 'A test exception'
rescue Exception => e
  puts e.message
  puts e.backtrace.inspect
ensure
  puts "Ensuring exception"
end
begin
  puts "I'm not raising exception"
rescue Exception => e
  puts e.message
  puts e.backtrace.inspect
else
  puts "Cogratulations -- no errors"
ensure
  puts "Ensuring exception"
=end
def promptAndGet(prompt)
  print prompt
  res = readline.chomp
  throw :quitRequested if res == "!"
  return res
end
catch :quitRequested do
  name = promptAndGet("name: ")
  age = promptAndGet("Age: ")
  sex = promptAndGet("Sex: ")
end
promptAndGet("Name:")