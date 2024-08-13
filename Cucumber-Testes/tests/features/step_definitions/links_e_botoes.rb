Quando('clico em botoes') do
  visit '/'
  sleep(2)
  #click _on clica em um botao, ou link com o texto dele, click_link_button sao identicos
  click_on('Começar Automação Web')
  sleep(2)
  visit '/buscaelementos/botoes'
  sleep(2)
  click_button(class: 'btn waves-light')
  sleep(2)
  #find procura o elemento pelo html, e clica uma vez
  find('a[onclick="ativaedesativa2()"]').click
  sleep(2)
  #procura o elemento e clica duas vezes
  find('a[onclick="ativaedesativa2()"]').double_click
  sleep(2)
  #procura o elemento e clica com o botão direito
  find('a[onclick="ativaedesativa2()"]').right_click
  sleep(2)
  click_on('Voltar')
  sleep(2)
  find('a[class="collapsible-header "]').click
  sleep(2)
  click_on('Criar Usuários')
  sleep(2)
  visit '/'
  sleep(2)
  #clica no link com o texto do elemento
  click_link('Github')
  sleep(4)
end 