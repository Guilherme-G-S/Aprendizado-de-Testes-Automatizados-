Quando('eu cadastro um usuario')do
  user = OpenStruct.new(
    name: 'Guilherme',
    lastname: 'Gomes da Silva',
    email: 'emailde.teste@gmail.com',
    endereco: 'Rua de Teste, 257',
    universidade: 'Faculdade Inteligente de Tecnologia'
  )
  @user_page = UserPage.new
  @user_page.load
  @user_page.criar_usuario(user)
end

Entao('eu verifico se o usuario foi cadastrado com sucesso')do
  expect(page).to have_content ('Usuário Criado com sucesso')
end
