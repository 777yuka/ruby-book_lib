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

