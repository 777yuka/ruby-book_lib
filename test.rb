# puts 1 + 2

# a = "Hello, world!"
# puts a

# b = "こんにちは"
# puts b

# string = "apple,banana,grape,orange,peach"
# array = string.split(",", 3)
# puts array #.inspect

# string = "apple,banana,grape"
# array = string.split(",")
# puts array #.inspect

# array = ["apple", "banana", "grape"]
# p array.inspect

# def greet(country)
#   return "countryを入力してください" if country.nil?
#   if country == "japan"
#     "こんにちは"
#   else
#     "Hello"
#   end
# end

# puts greet("japan")
# puts greet(nil)

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


# <<- は文字列の先頭にインデントを入れられる
# def some_method
#   <<-TEXT
# これはヒアドキュメントです。
#     <<-を使うと最後の識別子をインデントさせることができます。
#   TEXT
# end
# puts some_method

# =>出力結果
# これはヒアドキュメントです。
#     <<-を使うと最後の識別子をインデントさせることができます。


# <<~ は識別子の先頭のインデントを基準に、文字列の先頭のインデントが削除される
# def some_method
#   <<~TEXT
#     これはヒアドキュメントです。
#     これはヒアドキュメントです。
#       <<~を使うと最後の識別子をインデントさせることができます。
#   TEXT
# end
# puts some_method

# =>出力結果
# これはヒアドキュメントです。
# これはヒアドキュメントです。
#   <<~を使うと最後の識別子をインデントさせることができます。


# <<TEXTは、識別子に少しでもインデントを入れるとエラーになるので注意
# 以下は、エラーになる
# def some_method
#   <<TEXT
#     これはヒアドキュメントです。
#     この行の先頭にスペースがあります。
#   TEXT
# end
# puts some_method

# 以下は、エラーにならずに文字列のインデントが保たれたまま出力される
# def some_method
# <<TEXT
#     これはヒアドキュメントです。
#     この行の先頭にスペースがあります。
# TEXT
# end
# puts some_method

# =>出力結果
    # これはヒアドキュメントです。
    # この行の先頭にスペースがあります。



# 2進数表記は、頭に0bをつける
# sprintfメソッドにおける'%#b'は、引数を2進数表記にフォーマットする指示です（フォーマット文字列）
# 0bの部分は省略され、代わりに#がついています。

# 論理積（AND演算）は、2進数において、
# 同じ桁同士の数字が両方とも1の場合に1を、それ以外の場合には0を返します。
# sprintf '%#b' , (0b1010 & 0b1100)

#   1 0 1 0   (0b1010)
# & 1 1 0 0   (0b1100)
# ---------
#   1 0 0 0   (0b1000)

# &&は、左辺が真（true）である場合に、右辺を評価し、その結果を返します.
# 左辺が偽（false）である場合には、右辺を評価せず、左辺の値を返します。

# p puts 1 && 2
# 出力結果 => 2
# p nil && 2
# 出力結果 => nil

# 左側の式から順に評価を行い、全てが真であれば最後の式の値を返します。
# 偽があった場合、その時点で処理を終了し、偽の値を返します。
# 1 && 2 && 3
# 出力結果 => 3

# 1 && nil && 3
# 出力結果 => nil

# require "minitest/autorun"

# class SampleTest < Minitest::Test
#   def test_sample
#     assert_equal "RUBY" , "ruby".upcase
#   end
# end

# numbers = [1, 2, 3, 4]
# sum = 0
# numbers.each do |n|
#   sum_value = n.even? ? n * 10 : n
#   sum += sum_value
# end

# puts sum

puts (1..5).include?(1)


