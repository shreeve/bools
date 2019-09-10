def bools!
  vars = method(:test).arity
  list = vars.times.map {|i| (97 + i).chr}
  puts
  puts [*list, '|', 'result'] * ' '
  puts ['--' * list.size, '-' * 6] * '+-'
  (vars << 1).times do |i|
    list = ("%0*b" % [vars, i]).split('')
    vals = list.map {|item| item == '1'}
    resu = !!test(*vals) ? '1' : '0'
    puts [*list, '|', resu] * ' '
  end
end

at_exit { bools! }
