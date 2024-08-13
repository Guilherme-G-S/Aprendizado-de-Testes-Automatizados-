Dado('que eu estou no site de automacao') do
  visit '/'
  sleep(2)
end

E('clico em comecar automacao web e depois em criar usuario') do
  click_on('Começar Automação Web')
  sleep(1)
  find('a[class="collapsible-header "]').click
  sleep(1)
  click_on('Criar Usuários')
  sleep(2)
end

Quando('eu faco cadastro') do
  fill_in(id: 'user_name', with: 'Guilherme')
  sleep(1)
  fill_in(id: 'user_lastname', with: 'Gomes da Silva')
  sleep(2)
  find('#user_email').set('email.teste@gmail.com')
  sleep(2)
  find('#user_address').send_keys('Rua de Teste Preenchiemnto via Automação')
  sleep(2)
  fill_in(id: 'user_university', with: 'Estacio de Sá')
  sleep(2)
  fill_in(id: 'user_profile', with: 'Quality Assurance Junior')
  sleep(2)
  find('#user_gender').set('Masculino')
  sleep(2)
  find('#user_age').send_keys('21 anos')
  sleep(2)
  find('input[type="submit"]').click
  sleep(2)
end

Entao('verifico se fui cadastrado') do
  texto = find('#notice')
  expect(texto.text).to eql 'Usuário Criado com sucesso'
end