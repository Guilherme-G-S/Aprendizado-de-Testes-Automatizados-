Quando('acesso a url') do
  visit '/treinamento/home'
  sleep (5)
end

Entao('eu verifico se estou na pagina correta') do
  expect(page).to have_current_path('http://localhost:3000/treinamento/home', url: true)
  sleep(5)
end