Before do
  puts 'estou sendo executado antes de cada cenario'  
  @soma = 5 + 5
end

After do 
  puts 'estou sendo executado depois de cada cenario'
  @soma = 5 + 5
end

Before '@teste_tag' do
  puts 'rodei apenas no cenario com a tag'
end

After '@teste_tag' do
  puts 'rodei depois apenas no cenario com a tag'
end

Before do 
  Capybara.page.driver.browser.manage.window.maximize
end