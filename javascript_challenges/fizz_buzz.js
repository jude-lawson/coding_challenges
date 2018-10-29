const readline = require('readline');

const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

rl.question('What is the range that you want? ', answer => {
  fizzBuzzIt(rangeFrom(answer));

  rl.close();
});

const rangeFrom = upperLimit => {
  let range = Array.from({length: (parseInt(upperLimit) + 1)}, (_initialValue, index) => index);
  range.shift();

  return range;
}


const fizzBuzzIt = range => {
  range.forEach(number => {
    if (number % 3 === 0 && number % 5 === 0) console.log('FizzBuzz')
    else if (number % 3 === 0) console.log('Fizz')
    else if (number % 5 === 0) console.log('Buzz')
    else console.log(number)
  });
}
