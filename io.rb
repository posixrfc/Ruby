=begin
print "Enter a value :"
puts gets
str = "Hello Ruby!"
putc str
file = File.new("file", "r+")
if file
  content = file.sysread(30)
  puts content
  file.syswrite("ABCDEF")
  file.each_byte{|ch| putc ch; putc ?.}
  content = file.sysread(30)
  puts content
  file.close
else
  puts "Unable to open file!"
end

arr = IO.readlines("file")
puts arr[0]
puts arr[2]
puts arr[6]
IO.foreach("file"){|block| puts block}

# File.rename("file", "fil1")
# File.delete("fil1")
# file = File.new("file")
# file.chmod(0755)
puts File.open("file") if File::exist?("file")
puts File.file?("file")
puts File::directory?("dir")
puts File::directory?("dir1")

puts File.readable?("file")
puts File.writable?("file")
puts File.executable?("file")
puts File.readable?("fil1")
puts File.writable?("fil1")
puts File.executable?("fil1")

puts File.zero?("file")
puts File.size?("file")
puts File::ftype("dir1")
puts File::ctime("file")
puts File::mtime("file")
puts File::atime("file")

puts Dir.pwd
puts Dir.entries(".").join('___')
Dir.foreach(".") do |entry|
  puts entry
end

Dir.mkdir("mydir", 755)
Dir.delete("mydir")
=end
require 'tempfile'
require 'tmpdir'
tempfilename = File.join(Dir.tmpdir, "tingtong")
puts tempfilename
tempfile = File.new(tempfilename, "w")
tempfile.puts "This is a temporary file"
tempfile.close
File.delete(tempfilename)

f = Tempfile.new("tingting")
f.puts "Hello"
puts f.path
f.close