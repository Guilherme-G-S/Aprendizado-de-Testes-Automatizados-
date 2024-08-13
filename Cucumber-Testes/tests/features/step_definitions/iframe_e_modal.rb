Quando('entro no iframe e preencho os campos') do 
  visit ('/mudancadefoco/iframe')
  sleep(1)
  #iframe é uma tela dentro da outra, para conseguir mudar o foco das telas e conseguir interagir com o iframe, se usa o within_frame
  #within composto não preciamos dizer se é uma classe ou id, ele procura pelo iframe com o nome que você colocou sendo id ou class
  within_frame('id_do_iframe') do 
    #iremos fazer as ações dentro do iframe
    fill_in(id: 'first_name', with: 'Guilherme')
    sleep(1)
    fill_in(id: 'last_name', with: 'Gomes da Silva')
    sleep(1)
  end 
end

Quando('entro no modal e verifico o texto') do
  visit ('/mudancadefoco/modal')
  sleep(1)
  click_on('Abrir')
  sleep(1)
  #within puro precisamos dizer se o elemento é um id ou class usando o . ou #
  within('#modal1') do
    texto = find('h4')
    expect(texto.text).to eql ('Modal Teste')
  end
  sleep(1)
end

Entao('fecho o modal') do
  within('#modal1') do
    find('a[class="modal-close waves-green btn-flat"]').click
  end
  sleep(2)
end
