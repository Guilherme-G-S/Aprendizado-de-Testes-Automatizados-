  Dado("eu tenho {int} laranjas") do |valor1|
    @laranjas = valor1
    puts valor1
  end
  
  Quando("eu como {int} laranjas") do |valor2|
    @comer = valor2
    @resultado = @laranjas - @comer
    puts valor2
  end
  
  Entao("eu vejo quantas laranjas sobraram") do
    expect(@resultado).to eq 8
    puts @resultado
  end

  Dado("eu tenho {int} macas") do |valor3|
    @macas = valor3
    puts valor3
  end

  Quando("eu compro {int} macas") do |valor4|
    @compro = valor4
    @soma = @macas + @compro
    puts valor4
  end

  Entao("eu vejo quantas macas eu tenho") do
    expect(@soma).to eq 7
    puts @soma
  end

  Dado('que eu tenho {int} lapis') do |valor5|
    @lapis = valor5
    puts valor5
  end
    
  Quando('eu divido com meu amigo') do
    @total = @lapis / 2
  end
    
  Entao('eu vejo quantos lapis eu fiquei') do
    expect(@total).to eq 5
    puts @total
  end

  Dado('que eu tenho {int} papeis') do |valor6|
    @papeis = valor6
    puts valor6
  end
    
  Quando('eu corto cada papel em {int} pedacos') do |valor7|
    @pedacos = valor7
    @multiplicacao = @papeis * @pedacos
    puts valor7
  end
    
  Entao('eu conto quantos pedacos eu fiquei') do
    expect(@multiplicacao).to eq 20
    puts @multiplicacao
  end

