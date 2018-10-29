const readline = require('readline');

const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

rl.question('To whom would you like to say hello? ', answer => {
  sayHello(answer);
  
  rl.close();
});

const sayHello = greetee => {
  if (greetee == '') greetee = 'World'
  console.log(`Hello, ${greetee}!`)
}
