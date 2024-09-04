class MapeandoElementoPage < SitePrism::Page
  set_url '/users/new'

  element :campoNome, '#user_name'


  def preencher_campo
    campoNome.set 'Guilherme'
  end
end
