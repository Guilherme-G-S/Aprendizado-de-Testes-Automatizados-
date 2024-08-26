Quando('eu faco um upload de arquivo') do
  visit '/outros/uploaddearquivos'
  #jeito mais dificil e monotomo de fazer, mas também da certo
  #attach_file('upload', '~/OneDrive - rd.com.br/Área de Trabalho/RUBYTESTES/cucumber-testes/tests/features/teste.png', make_visible: true)
  sleep(1)
  #outra maneira mais simplificada, adicionando a uma variavel
  #Dir.pwd quer dizer que é no repositorio que estou mexendo
  @foto = File.join(Dir.pwd, 'features/teste.png')
  attach_file('upload', @foto, make_visible: true)
  sleep(1)
end