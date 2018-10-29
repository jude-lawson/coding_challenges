print "What range do you want? "

input = gets.chomp.to_i

range = (1..input)

range.each do |number|
  if number % 3 == 0 && number % 5 == 0
    puts 'FizzBuzz'
  elsif number % 3 == 0
    puts 'Fizz'
  elsif number % 5 == 0
    puts 'Buzz'
  else
    puts number
  end
end
