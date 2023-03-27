# 引数として渡された数値を、文字列として出力する
# def fizz_buzz(n)
#   n.to_s
# end

# puts fizz_buzz(1)

# 引数に3で割り切れる数値を渡されたら"Fizz"を返す
# 引数に3で割り切れない数値を渡されたら、渡された数値を文字列として返す

# def fizz_buzz(n)
#   if n % 3 == 0
#     "Fizz"
#   else
#     n.to_s
#   end
# end

# puts fizz_buzz(1)
# puts fizz_buzz(2)
# puts fizz_buzz(3)

# 引数に3で割り切れる数値を渡されたら"Fizz"を返す
# 引数に5で割り切れる数値を渡されたら"Buzz"を返す
# 引数に3または5で割り切れない数値を渡されたら、渡された数値を文字列として返す

# def fizz_buzz(n)
#   if n % 3 == 0
#     "Fizz"
#   elsif n % 5 == 0
#     "Buzz"
#   else
#     n.to_s
#   end
# end

# puts fizz_buzz(1)
# puts fizz_buzz(2)
# puts fizz_buzz(3)
# puts fizz_buzz(4)
# puts fizz_buzz(5)
# puts fizz_buzz(6)

# 引数に3で割り切れる数値を渡されたら"Fizz"を返す
# 引数に5で割り切れる数値を渡されたら"Buzz"を返す
# 引数に3または5で割り切れない数値を渡されたら、渡された数値を文字列として返す

# def fizz_buzz(n)
#   if n % 15 == 0
#     "Fizz Buzz"
#   elsif n % 3 == 0
#     "Fizz"
#   elsif n % 5 == 0
#     "Buzz"
#   else
#     n.to_s
#   end
# end

# puts fizz_buzz(1)
# puts fizz_buzz(2)
# puts fizz_buzz(3)
# puts fizz_buzz(4)
# puts fizz_buzz(5)
# puts fizz_buzz(6)
# puts fizz_buzz(7)
# puts fizz_buzz(8)
# puts fizz_buzz(9)
# puts fizz_buzz(10)
# puts fizz_buzz(11)
# puts fizz_buzz(12)
# puts fizz_buzz(13)
# puts fizz_buzz(14)
# puts fizz_buzz(15)
# puts fizz_buzz(16)

#　表示させたい文字列 He said, "Don't speak."
# puts %q!He said, "Don't speak."!　# エスケープなし
# puts 'He said, "Don\'t speak."'　# エスケープあり

#　表示させたい文字列 He said, "Hello."
# something = "Hello."
# puts %Q!He said, "#{something}"! # エスケープなし
# puts "He said, \"#{something}\"" # エスケープあり

# something = "Hello"
# puts %!He said, "#{something}"! # エスケープなし
# puts "He said, \"#{something}\"" # エスケープあり

def some_method
  <<-TEXT
    これはヒアドキュメントです。
    <<-を使うと最後の識別子をインデントさせることができます。
  TEXT
end

puts some_method

def some_method
  <<~TEXT
    これはヒアドキュメントです。
    <<~を使うと最後の識別子をインデントさせることができます。
  TEXT
end