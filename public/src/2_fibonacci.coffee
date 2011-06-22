class window.Fibonacci
  all: (config) =>
    numbas = [1,1]
    while _(numbas).last() < config.until
      numbas.push(numbas[numbas.length-2] + numbas[numbas.length-1])
    _(numbas).uniq()

  even: (config) =>
    num for num in @all(config) when num % 2 == 0