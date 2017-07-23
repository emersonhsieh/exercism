ary = (1..100).to_a

(0...ary.length).each do |x|
  ary.pop(ary[x])
  puts(ary.length)
end 