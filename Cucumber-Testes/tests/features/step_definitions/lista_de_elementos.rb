Quando('mapeio uma tabela') do
    @lista_de_elementos = MapeandoListas.new
    @lista_de_elementos.load
    puts @lista_de_elementos.lista.size
    sleep(2)

    puts @lista_de_elementos.lista[3].text
    expect(@lista_de_elementos.lista.size).to eql 24

    @lista_de_elementos.lista.each do |listas|
        puts listas.text
    end
end