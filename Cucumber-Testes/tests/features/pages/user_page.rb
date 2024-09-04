class UserPage < SitePrism::Page
  set_url '/users/new'
  element :nome, '#user_name'
  element :ultimo_nome, '#user_lastname'
  element :email, '#user_email'
  element :endereco, '#user_address'
  element :universidade, '#user_university'
  element :profissao, '#user_profile'
  element :genero, '#user_gender'
  element :idade, '#user_age'
  element :criar, 'input[value="Criar"]'
  element :mensagem, '.light-green.accent-2'

  def criar_usuario(user)
    nome.set user.name
    ultimo_nome.set user.lastname
    email.set user.email
    endereco.set user.endereco
    universidade.set user.universidade
    profissao.set 'Analista de Qualidade'
    genero.set 'Masculino'
    idade.set '22'
    criar.click
  end
end