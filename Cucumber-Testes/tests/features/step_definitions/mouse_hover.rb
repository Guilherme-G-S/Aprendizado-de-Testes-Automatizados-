Quando('seleciono o mouse hover') do
  visit '/iteracoes/mousehover'
  #hover é mexer o mouse até o elemento que quiser e se quiser e for preciso clicar também
  find('.activator').hover
  find('.activator').hover.click
  sleep(2)
end
