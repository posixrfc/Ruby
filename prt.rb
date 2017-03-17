#!/usr/bin/ruby -w
# -*- coding:UTF-8 -*-
print <<EOF
这是第1种方式创建here document
多行字符串
EOF
print <<"EOF"
这是第2种方式创建here document
多行字符串
EOF

print <<`EOC`
echo hi there
echo io there
EOC

print <<"foo", <<"bar"
I said foo.
foo
I said bar.
bar
END {
  puts "destructor ruby"
}
BEGIN {
  puts "initialization ruby envoriment"
}
puts 'escape using "\\"'
puts 'That \'s right'
puts "#{'agc' + ", od"}"