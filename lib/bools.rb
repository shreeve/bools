def bools!
  vars = method(:test).arity
  cols = vars.times.map {|i| (97 + i).chr}
  runs = 1 << vars

  puts
  puts [*cols, '|', 'result'] * ' '
  puts ['--' * cols.size, '-' * 6] * '+-'

  runs.times do |i|
    list = ("%0*b" % [vars, i]).split('')
    vals = list.map {|item| item == '1'}
    resu = !!test(*vals) ? '1' : '0'
    puts [*list, '|', resu] * ' '
  end
end

at_exit { bools! }

__END__

    # initial gray code bits
    bits = 0

      # iterate through gray codes
      if gray
        mods = i ^ (i + 1)
        flip = mods ^ (mods >> 1)
        bits = bits ^ flip
      end
