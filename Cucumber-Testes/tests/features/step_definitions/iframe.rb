Quando('preencho os campos') do
  @pagina_iframe = PaginaPadrao.new
  @pagina_iframe.load

  @pagina_iframe.preencher_campos do |iframe|
    iframe.nome.set 'Guilherme'
    iframe.ultimo_nome.set 'Gomes da Silva'
  end
  sleep(2)
end
