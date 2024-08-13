Quando('eu multiplico minhas {int} pelo {int}') do |laranjas, valor|
  @multiplicacao = laranjas * valor
end
  
Entao('eu vejo qual {int} da multiplicacao') do |resultado|
  expect(@multiplicacao).to eq resultado
end