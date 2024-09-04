Quando ('acessar a url') do
  @home = PaginaInicial.new #chamei a classe do page e armazenei em uma variavel home
  @home.load  #fiz o load da variavel que contem o site onde eu quero entrar
  sleep(2)
end

Entao ('verifico se estou na página inicial') do
  expect(page).to have_current_path('http://localhost:3000/treinamento/home', url: true)
end
