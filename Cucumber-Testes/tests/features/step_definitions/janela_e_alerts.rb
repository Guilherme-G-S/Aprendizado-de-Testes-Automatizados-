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
  visit '/mudancadefoco/alert'
  click_on('Clique para JS Alert')
  sleep(1)
  #executa o bloco aceitando um alerta, sempre que for mencionar algo na pagina, usa-se "page"
  page.accept_alert
  sleep(2)
  find('button[onclick="jsConfirm()"]').click
  sleep(1)
  #executa o bloco aceitando uma confirmação como: Ok, Sim, Feito... É parecido com o accept_alert
  page.accept_confirm
  #executa o bloqueio, dispensando uma confirmação
  page.dismiss_confirm
  sleep(2)
  find('button[onclick="jsPrompt()"]').click
  sleep(1)
  #executa o bloco aceitando um prompt e respondendo opcionalmente
  page.accept_prompt(with: 'Guilherme')
  #executa o bloco, dispensando o prompt que abre
  page.dismiss_prompt
  sleep(2)
end 
