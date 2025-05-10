array = [7, 7, 2, 2, 1, 3]

frequencies = Hash.new(0)

array.each { |num| frequencies[num] += 1 }

max_frequency = frequencies.values.max

most_frequent = frequencies.select { |_, freq| freq == max_frequency }.keys

puts "Найчастіші елементи: #{most_frequent.join(', ')}"
