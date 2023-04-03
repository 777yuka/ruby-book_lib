# def to_hex(r, g, b)
#   "#" +
#   r.to_s(16).rjust(2, "0") +
#   b.to_s(16).rjust(2, "0") +
#   g.to_s(16).rjust(2, "0")
# end

# def to_hex(r, g, b)
#   hex = "#"
#   [r,g,b].each do |n|
#     hex += n.to_s(16).rjust(2, "0")
#   end
#   hex
# end

# puts to_hex(255, 255, 255)

# def to_hex(r, g, b)
#   [r,g,b].sum("#") do |n|
#     n.to_s(16).rjust(2, "0")
#   end
# end

# puts to_hex(255, 255, 255)

def to_hex(r, g, b)
  [r, g, b].inject("#") do |hex, n|
  hex + n.to_s(16).rjust(2, "0")
  end
end

# def to_ints(hex)
#   r = hex[1..2]
#   g = hex[3..4]
#   b = hex[5..6]
#   [r, g, b].map do |s|
#     s.hex
#   end
#   ints
# end

# do ... end の代わりに{}を使って書き換える（1行でコンパクトに書けるとき）
# def to_ints(hex)
#   r = hex[1..2]
#   g = hex[3..4]
#   b = hex[5..6]
#   [r, g, b].map { |s| s.hex }
# end

# ブロックの代わりに「&:メソッド名」で書き換える
# 書き換え可能な条件3つ
# 1. ブロックパラメーターが1つ（s）
# 2. ブロックの中で呼び出す引数が1つ（s）
# 3. ブロックの中ではブロックパラメーターに対してメソッドを１回呼び出す以外の処理がない
def to_ints(hex)
  r, g, b = hex[1..2], hex[3..4], hex[5..6]
  [r, g, b].map(&:hex)
end

p to_ints("#ffffff")







