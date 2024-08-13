Quando('eu marco um checkbox e um radiobox') do
  visit '/buscaelementos/radioecheckbox'
  sleep(2)
  #checkbox como usar
  find('label[for="white"]').click
  sleep(2)
  check('purple', allow_label_click: true)
  sleep(2)
  uncheck('purple', allow_label_click: true)
  sleep(2)
  find('label[for="grey"]').click
  sleep(2)
  #radiobox como usar
  choose('blue', allow_label_click: true) #allow_label_click: true é uma forma de dizer que a label é clicável
  sleep(2)
end