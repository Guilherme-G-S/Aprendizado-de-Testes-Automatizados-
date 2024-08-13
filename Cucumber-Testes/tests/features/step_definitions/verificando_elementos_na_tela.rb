Quando('clico no botao') do
  visit ('/buscaelementos/botoes/')
  sleep(2)
  find('#teste').click
  sleep(2)
end

Entao('verifico se o texto apareceu na tela com sucesso') do
  #@texto = find('#div1') isso é uma forma também de validar o elemento na tela
  #expect(@texto.text).to eql 'Você Clicou no Botão!'
  page.assert_text(text, 'Você Clicou no Botão!')
  sleep(1)
  page.has_text?('Você Clicou no Botão!')
  sleep(1)
  have_text('Você Clicou no Botão!')
  sleep(1)
  #esses 3 metodos vão buscar pelo texto do elemento, são a mesma coisa porém de maneiras diferentes
  find('#teste').click
  sleep(1)
  assert_no_text(text, 'Você Clicou no Botão!')
  has_no_text?('Você Clicou no Botão!')
  sleep(1)
end
