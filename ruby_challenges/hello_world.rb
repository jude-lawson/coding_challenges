print 'To whom would you like to say hello? '

greetee = gets.chomp
greetee = 'World' if greetee == ''

puts "Hello, #{greetee}!"
