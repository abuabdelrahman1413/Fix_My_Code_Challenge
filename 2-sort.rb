result = []
ARGV.each do |arg|
  # skip if not integer
  next unless /^-?[0-9]+$/.match?(arg)

  # convert to integer
  i_arg = arg.to_i

  # insert result at the right position
  is_inserted = false
  i = 0
  l = result.size
  while !is_inserted && i < l
    if result[i] < i_arg
      i += 1
    else
      # insert at i position in result array
      result.insert(i, i_arg)
      is_inserted = true
      break
    end
  end
  result << i_arg unless is_inserted
end

puts result
