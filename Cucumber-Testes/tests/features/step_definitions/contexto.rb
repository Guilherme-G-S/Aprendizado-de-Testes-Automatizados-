Dado('que eu tenho {int} laranjas na loja') do |valor|
  puts valor
  @laranjas = valor
end
  
Quando('eu coloco {int} laranjas na loja') do |valor2|
  puts valor2
  @coloquei = valor2
  @resultado = @laranjas + @coloquei
end
  
Entao('eu verifico se o total de laranjas na loja e {int}') do |total|
  expect(@resultado).to eq total
end
  
Quando('eu vendo {int} laranjas da loja') do |valor3|
  puts valor3
  @retirei = valor3
  @resultado = @laranjas - @retirei
end
  
Entao('eu verifico com quantas laranjas eu fiquei na loja') do
  expect(@resultado).to eq 8
end