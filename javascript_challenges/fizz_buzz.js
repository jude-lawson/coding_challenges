const readline = require('readline');

const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

rl.question('What range do you want? ', range => {
  var range = Array.from({length: (parseInt(range) + 1)}, (_initial_value, index) => index)
  range.shift();

  range.forEach(number => {
    if ((number % 3 === 0) && (number % 5 === 0)) {
      console.log('FizzBuzz');
    } else if (number % 3 === 0) {
      console.log('Fizz')
    } else if (number % 5 === 0) {
      console.log('Buzz');
    } else {
      console.log(number);
    }
  });

  rl.close();
});
