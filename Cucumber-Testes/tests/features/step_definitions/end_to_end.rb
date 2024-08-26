Quando('eu cadastro o usuario') do
  visit '/users/new'
  fill_in(id: 'user_name', with: 'Guilherme')
  find('#user_lastname').set('Gomes da Silva')
  fill_in(id: 'user_email', with: 'emailteste@gmail.com')
  find('input[value="Criar"]').click
end

Entao('verifico se o usuario foi cadastrado') do
  texto = find('#notice')
  expect(texto.text).to eql 'Usuário Criado com sucesso'
  sleep(4)
  expect(page).to have_selector('a[class="btn waves-light blue"]', visible: true, wait: 10)
end

Quando('edito um usuario') do
  find('a[class="btn waves-light blue"]').click
  sleep(4)
end

Entao('verifico se o usuario foi editado') do

end
