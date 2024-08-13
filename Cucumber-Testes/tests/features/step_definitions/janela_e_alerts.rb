Quando('eu entro na janela e verifico a mensagem') do
  visit ('/mudancadefoco/janela')
  sleep(1)
  #variável janela recebe uma janela que foi aberta pelo link
  janela = window_opened_by do
    click_link 'Clique aqui'
  end
  #muda de foco para a janela
  within_window janela do
    expect(current_url).to eq 'http://localhost:3000/mudancadefoco/newwindow'
    #armazenei na variável um elemento que está na janela que eu abri para validar se realmente abriu a janela
    @mensagem = find('h5[class="red-text text-darken-1 center"]')
    expect(@mensagem.text).to eq ('Você Abriu uma nova janela!!')
    sleep(2)
    janela.close 
    sleep(1)
  end
  #segunda opção
  click_link 'Clique aqui'
  #comando que muda para a ultima aba, se tem 10 abas abertas ele muda de qual você esta para a ultima
  switch_to_window windows.last
  @mensagem = find('h5[class="red-text text-darken-1 center"]')
  expect(@mensagem.text).to eq ('Você Abriu uma nova janela!!')
  sleep(2)
  #comando de fechar a ultima janela, o .close fecha a janela da variavel que vice armazenou
  windows.last.close 
  sleep(1)
end

Quando('eu entro no alert e verifico faco a acao') do

end 
