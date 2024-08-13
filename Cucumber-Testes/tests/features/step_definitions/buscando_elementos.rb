Quando('acesso a url de botoes') do
  visit '/buscaelementos/botoes'
  sleep(3)
end

Entao('verifico se encontrei os elementos') do
  #all busca todos os elementos que contenham o all
  page.all(:css, '.btn') #no capybara atual não é preciso usar mais o :css pois por padrão ele ja busca por css
  #busca o elemento mapeado
  find('#teste')
  #busca pelo id
  find_by_id('teste')
  #busca pelo botao
  find_button(class: 'btn waves-light')
  #busca o primeiro elemento que contenha o elemento mapeado
  first('.btn')
  #busca um link dentro mapeado dentro da pagina, poderia ser por id também, mas so pra ter um exemplo
  find_link(href: 'https://www.udemy.com/automacao-de-testes-com-capybara-cucumber-e-ruby/')
  sleep(3)
end