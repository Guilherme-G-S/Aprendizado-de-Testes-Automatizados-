Quando('realizo acoes com o teclado') do
  visit '/users/new'
  find('#user_name').send_keys(:page_down)
  sleep(2)
  find('input[value="Criar"]').send_keys(:enter)
  sleep(2)
  texto = find('h2')
  expect(texto.text).to eql ('3 errors proibiu que este usuário fosse salvo:')
  sleep(2)
end
