Quando('cliquei no botao') do
    @ajax = AjaxPage.new
    @ajax.load

    @ajax.clicar_botao
end

Entao('verifico se apareceu') do
    expect(@ajax.mensagem).to eql 'Você Clicou no Botão!'
end